import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mntmarketpay/layout/navbar_admin.dart';
import 'package:mntmarketpay/layout/navbar_buyer.dart';
import 'package:mntmarketpay/layout/navbar_seller.dart';
import 'package:mntmarketpay/pages/admin/detail-page/detail_account_page.dart';
import 'package:mntmarketpay/pages/admin/main-page/admin_home_page.dart';
import 'package:mntmarketpay/pages/admin/main-page/admin_topup_page.dart';
import 'package:mntmarketpay/pages/login_page.dart';
import 'package:mntmarketpay/pages/splashscreen.dart';

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
      home: SplashScreen(LoginPage()),
    );
  }
}

