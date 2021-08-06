import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:get_it/get_it.dart';
import 'package:ifilms/screens/info/components/custom_button_info.dart';
import 'package:ifilms/screens/info/components/tmdb.dart';
import 'package:ifilms/stores/payment_store.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:share/share.dart';

class InfoScreen extends StatefulWidget {
  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  InAppPurchaseConnection _iap = InAppPurchaseConnection.instance;

  final PaymentStore paymentStore = GetIt.I<PaymentStore>();

  void _share(BuildContext context) {
    final RenderBox box = context.findRenderObject();
    Share.share(
        "Baixe IFilms na PlayStore.\nhttps://play.google.com/store/apps/details?id=br.com.ifilms",
        subject: 'iFilms',
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }

  void _buyProduct(ProductDetails prod) {
    final PurchaseParam purchaseParam = PurchaseParam(productDetails: prod);
    _iap.buyNonConsumable(purchaseParam: purchaseParam);
  }

  @override
  void initState() {
    super.initState();
    GetIt.I<PaymentStore>().verifyPurchase();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            children: [
              for (var prod in paymentStore.products)
                if (paymentStore.hasPurchased(prod.id) != null) ...[
                  Container()
                ] else ...[
                  CustomButtonInfo(
                    title: 'Remover anúncios',
                    icon: Icons.cancel,
                    onTap: () => _buyProduct(prod),
                  )
                ],

              CustomButtonInfo(
                title: 'Recomendar o aplicativo',
                icon: Icons.share,
                onTap: () {
                  _share(context);
                },
              ),
              CustomButtonInfo(
                title: 'Reportar um problema',
                icon: Icons.report_problem_rounded,
                onTap: () async {
                  final Email email = Email(
                    body: '',
                    subject: 'iFilms - Reportar um problema',
                    recipients: ['moabebarbosaa@gmail.com'],
                    isHTML: false,
                  );
                  await FlutterEmailSender.send(email);
                },
              ),
              // CustomButtonInfo(
              //   title: 'Sobre iFilms',
              //   icon: Icons.info,
              //   onTap: () async {
              //     final url =
              //         'https://www.blogger.com/blog/post/edit/1472331361421993678/1710302177594495756';
              //     if (await canLaunch(url)) {
              //       await launch(url);
              //     } else {
              //       throw 'Could not launch $url';
              //     }
              //   },
              // ),
            ],
          ),
          TMDB()
        ],
      ),
    );
  }
}
