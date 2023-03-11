import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:mntmarketpay/pages/merchant/widget/merchant-home-widget/transaction.dart';

class MerchantHomePage extends StatefulWidget {
  const MerchantHomePage({
  super.key,
  });

  @override
  State<MerchantHomePage> createState() => _MerchantHomePageState();
}

class _MerchantHomePageState extends State<MerchantHomePage> {
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
                        height: 182,
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
                                      'Janji Jiwa - IOH',
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
                                      color: Color(0xffF6f6f6),
                                      borderRadius: BorderRadius.circular(30)),
                                  child:Center(
                                    child: Image.asset('assets/images/shop.png',width: 30,height: 30,),)
                              )
                            ]
                        ),
                      ),

                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: double.infinity,
                              height: 298,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/back_qr.png')
                                )
                              ),
                              child: Column(
                                children: <Widget>[
                                  Image.asset('assets/images/test_qr.png'),
                                  Text('Janji Jiwa IOH',style: TextStyle(
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24,
                                    color: Color(0xff141414)
                                  ),),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('081287138898',style: TextStyle(
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Color(0xffb6aaaa)
                                  ),),
                                ],
                              ),
                            ),

                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 20,left: 20),
                              child: Column(
                                children: [
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
                          ],
  )),
                            SizedBox(
                              height: 25,
                            ),
                            TransactionHistory()
                        ]),
                      ),


                    ]
                )
            )
        )
    );
  }
}
