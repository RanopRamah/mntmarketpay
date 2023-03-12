import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mntmarketpay/layout/navbar_admin.dart';
import 'package:mntmarketpay/pages/admin/main-page/admin_home_page.dart';
import 'package:mntmarketpay/pages/admin/main-page/admin_topup_page.dart';

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
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx) => const AdminNavBar())));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('MNTMarket Pay', style: TextStyle(color: Colors.black54, fontSize: 23)),
      ),
    );
  }
}


