import 'package:flutter/material.dart';

class BuyerHomePage extends StatefulWidget {
  const BuyerHomePage({super.key,});

  @override
  State<BuyerHomePage> createState() => _BuyerHomePageState();
}

class _BuyerHomePageState extends State<BuyerHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Container(

        width: double.infinity,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 162,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/back_home.png')
                )
              ),
            )
          ],
        ),
      ),
      )
    );
  }
}
