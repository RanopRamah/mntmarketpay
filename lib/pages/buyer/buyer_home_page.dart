import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuyerHomePage extends StatefulWidget {
  const BuyerHomePage({
    super.key,
  });

  @override
  State<BuyerHomePage> createState() => _BuyerHomePageState();
}

class _BuyerHomePageState extends State<BuyerHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 30, top: 40),
                width: double.infinity,
                height: 169,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/back_home.png'))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Good Morning,',
                      style: TextStyle(
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xffC5A2A2),
                      ),
                    ),

                    Text(
                      'Raffi Nauval',
                      style: TextStyle(
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w700,
                        fontSize: 32,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    ));
  }
}
