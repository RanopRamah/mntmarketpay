import 'package:flutter/material.dart';
import 'package:mntmarketpay/layout/navbar_buyer.dart';
import 'package:mntmarketpay/pages/buyer/payment-page/amount_page.dart';
import 'package:mntmarketpay/pages/merchant/merchant_history_page.dart';
import 'package:mntmarketpay/pages/merchant/merchant_home_page.dart';
import 'package:mntmarketpay/pages/merchant/merchant_withdraw.dart';
import 'package:mntmarketpay/layout/navbar_seller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MNTMarket Pay',
      home: SellerNavbar(),
    );
  }
}

