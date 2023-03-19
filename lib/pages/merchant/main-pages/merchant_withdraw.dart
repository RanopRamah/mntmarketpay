import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mntmarketpay/domain/entities/seller.dart';
import 'package:mntmarketpay/domain/usecases/seller/index_seller.dart';
import 'package:qr_flutter/qr_flutter.dart';

class MerchantWithdrawPage extends StatefulWidget {
  const MerchantWithdrawPage(this.bearer, this.name, this.phone, {super.key}) : super();

  final String bearer;
  final String name;
  final String phone;

  @override
  State<MerchantWithdrawPage> createState() => _MerchantWithdrawPageState();
}

class _MerchantWithdrawPageState extends State<MerchantWithdrawPage> {
  late Future<Seller> _seller;
  final seller = IndexSeller();

  @override
  void initState() {
    _seller = seller.getSeller(widget.bearer);
    super.initState();
  }

  setQr(user) {
    var type = user['type'].toString();
    var id = user['id'].toString();
    var nama = user['nama'].toString();
    var noHp = user['no_hp'].toString();
    var data = {'nama': nama, 'no_hp': noHp, 'id' : id, 'type' : type};
    final String jsonString = jsonEncode(data);
    return jsonString;
  }

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
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                 const Text(
                                    'Good Morning,',
                                    style: TextStyle(
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Color(0xffC5A2A2),
                                    ),
                                  ),
                                  Text(
                                    widget.name,
                                    style: const TextStyle(
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 32,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ],
                              ),
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
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children:  <Widget>[
                            Container(
                              padding: EdgeInsets.all(20),
                              width: double.infinity,
                              height: 353,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.10),
                                    blurRadius: 6.0,
                                    spreadRadius: 2.0,
                                    offset: Offset(0.0, 0.0),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: <Widget>[
                                 const Text('Withdraw QR',style: TextStyle(
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff141414),
                                    fontSize: 24
                                  ),),
                                  Container(
                                    width: double.infinity,
                                    height: 267,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/back_qr.png')
                                      )
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        const SizedBox(height: 25),
                                        FutureBuilder(
                                          future: _seller,
                                          builder: (context, snapshot) {
                                            if (snapshot.hasData) {
                                              return QrImage(
                                                data: setQr(snapshot.data!.wd_qrcode),
                                                version: QrVersions.auto,
                                                size: 150,
                                              );
                                            } else if (snapshot.hasError) {
                                              return Center(child: Text('${snapshot.error}'));
                                            }

                                            return const Center(child: CircularProgressIndicator());
                                          },
                                        ),
                                        Text(widget.name,style: const TextStyle(
                                            fontFamily: 'DM Sans',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 21,
                                            color: Color(0xff141414)
                                        ),),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(widget.phone,style: const TextStyle(
                                            fontFamily: 'DM Sans',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 17,
                                            color: Color(0xffb6aaaa)
                                        ),),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            FutureBuilder(
                              future: _seller,
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  return Container(
                                    padding: const EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.10),
                                          blurRadius: 6.0,
                                          spreadRadius: 2.0,
                                          offset: Offset(0.0, 0.0),
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Image.asset('assets/images/wallet.png',width: 12,height: 10,),
                                            SizedBox(width: 10,),
                                            Text('Balance',style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'DM Sans',
                                                color: Color(0xffaaaaaa)
                                            ),),
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Text('Rp',style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'DM Sans',
                                                color: Color(0xff868383)
                                            ),),
                                            SizedBox(width: 10,),
                                            Text(snapshot.data!.saldo,style: TextStyle(
                                                fontSize: 31,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'DM Sans',
                                                color: Color(0xff000000)
                                            ),),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(12),
                                          height: 71,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(12),
                                              border: Border.all(width: 1,color: Color(0xfff6efef))
                                          ),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[

                                              Text('Total Withdraw',style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'DM Sans',
                                                  color: Color(0xffaaaaaa)
                                              ),),
                                              SizedBox(
                                                height: 3,
                                              ),

                                              Row(
                                                children: <Widget>[
                                                  Text('Rp',style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w500,
                                                      fontFamily: 'DM Sans',
                                                      color: Color(0xff868383)
                                                  ),),
                                                  SizedBox(width: 10,),
                                                  Text(snapshot.data!.withdraw,style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w500,
                                                      fontFamily: 'DM Sans',
                                                      color: Color(0xff000000)
                                                  ),),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                } else if (snapshot.hasError) {
                                  return Center(child: Text('${snapshot.error}'));
                                }

                                return const Center(child: CircularProgressIndicator());
                              },
                            ),
                          ],
                        ),
                      ),
                    ]
                )
            )
        )
    );
  }
}
