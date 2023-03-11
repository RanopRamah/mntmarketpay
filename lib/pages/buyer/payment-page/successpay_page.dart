
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:mntmarketpay/layout/navbar_buyer.dart';
import 'dart:ui';
import 'dart:async';
import 'dart:convert';




class SuccessPayPage extends StatefulWidget {
  const SuccessPayPage({super.key}) : super();



  @override
  State<SuccessPayPage> createState() => _SuccessPayPageState();
}

class _SuccessPayPageState extends State<SuccessPayPage> {


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {

    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Container(
              width: double.infinity,
              height: 1900,
              decoration: const BoxDecoration(color: Colors.white),

              padding: const EdgeInsets.only(top: 100,bottom: 0.1
              ),

              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 300,
                      child:
                      Center(
                          child:
                          Column(
                              children : [
                                SizedBox(
                                  height: 20,
                                ),
                                Image.asset('assets/images/success.png', width: 121, height: 121,),
                                SizedBox(
                                  height: 30,
                                ),
                                Text('Payment Success',style: TextStyle(
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 32,
                                    color: Color(0xff222222)
                                ),),

                                SizedBox(
                                  height: 10,
                                ),

                                Text('Hooray! 👏 Your transaction is completed!',style: TextStyle(
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Color(0xffa6a6a6)
                                ),),])

                      ),
                    ),

                    Container(
                      height: 900,
                      padding: EdgeInsets.only(top: 20,
                          right: 20,left: 20),
                      width: double.infinity,

                      decoration: BoxDecoration(
                        color: Colors.white,

                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 4,
                            blurRadius: 4,
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                            offset: Offset(0, 1),
                            blurStyle: BlurStyle.normal,
                          )
                        ],
                      ),
                      child:
                      Column(
                        children: <Widget>[
                          Text('Detail Transaksi',style: TextStyle(
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              color: Color(0xff222222)
                          ),),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Total Pembayaran',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Euclid Circular B',
                                  fontSize: 16,
                                  color: Color(0xffbebcbc)
                              ),),
                              Text('Rp 40,000',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'DM Sans',
                                  fontSize: 16,
                                  color: Color(0xff5258d4)
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Merchant',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'DM Sans',
                                  fontSize: 16,
                                  color: Color(0xffbebcbc)
                              ),),
                              Text('Janji Jiwa - IOH Bazaar',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'DM Sans',
                                  fontSize: 16,
                                  color: Color(0xff222222)
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Merchant ID',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'DM Sans',
                                  fontSize: 16,
                                  color: Color(0xffbebcbc)
                              ),),
                              Text('081287138898',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'DM Sans',
                                  fontSize: 16,
                                  color: Color(0xff222222 )
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Item',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'DM Sans',
                                  fontSize: 16,
                                  color: Color(0xffbebcbc)
                              ),),
                              Text('Matcha Green Tea',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'DM Sans',
                                  fontSize: 16,
                                  color: Color(0xff222222 )
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Kode Unik',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'DM Sans',
                                  fontSize: 16,
                                  color: Color(0xffbebcbc)
                              ),),
                              Text('00000123456',style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'DM Sans',
                                  fontSize: 16,
                                  color: Color(0xff222222 )
                              ),),
                            ],
                          ),

                          SizedBox(
                            height: 25,
                          ),

                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Color(0xff5258D4),
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: TextButton(
                              child: Text('Home',style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white
                              ),),
                              onPressed: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (c)=> BuyerNavBar()));
                              },
                            ),
                          ),

                        ],
                      ),)

                  ])




          ),


        )
    );
  }


}