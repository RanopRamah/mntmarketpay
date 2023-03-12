import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mntmarketpay/pages/buyer/widget/buyer-home-widget/inventory.dart';
import 'package:mntmarketpay/pages/buyer/widget/buyer-home-widget/transaction.dart';

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
              color: Color(0xfffbfbfb),
                width: double.infinity,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 30, right: 30,top: 30),
                        width: double.infinity,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Color(0xff458EDE),
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/back_home.png'))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
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
                          ),),
                          Container(

                            width: 61,
                            height: 61,
                            decoration: BoxDecoration(
                                color: Color(0xffFFCB0A),
                                borderRadius: BorderRadius.circular(30)),
                            child:Center(
                              child: Text('RN',style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'DM Sans',
                                color: Colors.white
                            ),),)
                          )
                        ]
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        width: double.infinity,
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Image.asset('assets/images/wallet.png',width: 16,height: 14,),
                                SizedBox(width: 10,),
                                Text('Balance',style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'DM Sans',
                                    color: Color(0xffaaaaaa)
                                ),),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: <Widget>[
                                Text('Rp',style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'DM Sans',
                                    color: Color(0xff868383)
                                ),),
                                SizedBox(width: 10,),
                                Text('12,000,000',style: TextStyle(
                                    fontSize: 42,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'DM Sans',
                                    color: Color(0xff000000)
                                ),),
                              ],
                            ),
SizedBox(
  height: 30,
),

                      TransactionHistory(),

                          ],
                        ),
                      )

                    ]
                )
            )
        )
    );
  }
}
