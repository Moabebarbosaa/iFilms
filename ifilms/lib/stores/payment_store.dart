import 'dart:async';
import 'dart:io';

import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:mobx/mobx.dart';
import 'package:collection/collection.dart';

part 'payment_store.g.dart';

class PaymentStore = _PaymentStore with _$PaymentStore;

abstract class _PaymentStore with Store {
  InAppPurchaseConnection _iap = InAppPurchaseConnection.instance;

  @observable
  bool available = true;

  StreamSubscription subscription;

  final String myProductID = 'remover_anuncios';

  bool _isPurchased = false;

  bool get isPurchased => _isPurchased;

  set isPurchased(bool value) {
    _isPurchased = value;
  }

  List _purchases = [];

  List get purchases => _purchases;

  set purchases(List value) {
    _purchases = value;
  }

  List _products = [];

  List get products => _products;

  set products(List value) {
    _products = value;
  }

  @action
  void initialize() async {
    available = await _iap.isAvailable();
    if (available) {
      await _getProducts();
      await _getPastPurchases();
      verifyPurchase();
      subscription = _iap.purchaseUpdatedStream.listen((data) {
        purchases.addAll(data);
        verifyPurchase();
      });
    }
  }

  @action
  void verifyPurchase() {
    PurchaseDetails purchase = hasPurchased(myProductID);

    if (purchase != null && purchase.status == PurchaseStatus.purchased) {
      if (purchase.pendingCompletePurchase) {
        _iap.completePurchase(purchase);

        if (purchase != null && purchase.status == PurchaseStatus.purchased) {
          isPurchased = true;
        }
      }
    }
  }

  @action
  PurchaseDetails hasPurchased(String productID) {
    return purchases
        .firstWhereOrNull((purchase) => purchase.productID == productID);
  }

  Future<void> _getProducts() async {
    Set<String> ids = Set.from([myProductID]);
    ProductDetailsResponse response = await _iap.queryProductDetails(ids);
    products = response.productDetails;
  }

  Future<void> _getPastPurchases() async {
    QueryPurchaseDetailsResponse response = await _iap.queryPastPurchases();
    for (PurchaseDetails purchase in response.pastPurchases) {
      if (Platform.isIOS) {
        _iap.consumePurchase(purchase);
      }
    }
    purchases = response.pastPurchases;
  }
}
