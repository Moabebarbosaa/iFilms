// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PaymentStore on _PaymentStore, Store {
  final _$availableAtom = Atom(name: '_PaymentStore.available');

  @override
  bool get available {
    _$availableAtom.reportRead();
    return super.available;
  }

  @override
  set available(bool value) {
    _$availableAtom.reportWrite(value, super.available, () {
      super.available = value;
    });
  }

  final _$initializeAsyncAction = AsyncAction('_PaymentStore.initialize');

  final _$_PaymentStoreActionController =
      ActionController(name: '_PaymentStore');

  @override
  void verifyPurchase() {
    final _$actionInfo = _$_PaymentStoreActionController.startAction(
        name: '_PaymentStore.verifyPurchase');
    try {
      return super.verifyPurchase();
    } finally {
      _$_PaymentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  PurchaseDetails hasPurchased(String productID) {
    final _$actionInfo = _$_PaymentStoreActionController.startAction(
        name: '_PaymentStore.hasPurchased');
    try {
      return super.hasPurchased(productID);
    } finally {
      _$_PaymentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
available: ${available}
    ''';
  }
}
