import 'package:flutter/material.dart';
import 'package:mntmarketpay/layout/navbar_buyer.dart';
import 'package:mntmarketpay/pages/buyer/closing/failedpay.dart';
import 'package:mntmarketpay/pages/buyer/closing/successpay.dart';

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
      home: FailedResponsePage(),
    );
  }
}

