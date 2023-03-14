import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mntmarketpay/common/constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen(this.w,{super.key}) : super();

  final Widget w;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx) => widget.w)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color(0xFFFBFBFB)),
        child: Stack(
          children: [
            Image.asset(SplashScreenItem.spashBg2),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(SplashScreenItem.apakek, style: SplashScreenItem.style),
                      const SizedBox(height: 29),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(SplashScreenItem.indosat, width: 105, height: 36.79),
                          const SizedBox(width: 34),
                          Image.asset(SplashScreenItem.si, width: 65, height: 55),
                          const SizedBox(width: 45),
                          Image.asset(SplashScreenItem.wakaf, width: 93, height: 35),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
