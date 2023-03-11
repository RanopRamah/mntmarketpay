import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mntmarketpay/pages/buyer/widget/home-widget/inventory.dart';
import 'package:mntmarketpay/pages/buyer/widget/home-widget/transaction.dart';

class MerchantWithdrawPage extends StatefulWidget {
  const MerchantWithdrawPage({
  super.key,
  });

  @override
  State<MerchantWithdrawPage> createState() => _MerchantWithdrawPageState();
}

class _MerchantWithdrawPageState extends State<MerchantWithdrawPage> {
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

                    ]
                )
            )
        )
    );
  }
}
