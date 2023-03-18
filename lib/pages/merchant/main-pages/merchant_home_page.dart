import 'package:flutter/material.dart';
import 'package:mntmarketpay/domain/entities/seller.dart';
import 'package:mntmarketpay/domain/entities/transaction.dart';
import 'package:mntmarketpay/domain/usecases/seller/index_seller.dart';
import 'package:mntmarketpay/domain/usecases/seller/transaction_history.dart';

import 'package:mntmarketpay/pages/merchant/widget/merchant-home-widget/transaction.dart';

class MerchantHomePage extends StatefulWidget {
  const MerchantHomePage(this.bearer, this.name, this.phone, {super.key}): super();

  final String bearer;
  final String name;
  final String phone;

  @override
  State<MerchantHomePage> createState() => _MerchantHomePageState();
}

class _MerchantHomePageState extends State<MerchantHomePage> {
  late Future<Seller> seller;
  late Future<List<Transaction>> tr;
  final _seller = IndexSeller();
  final _transaction = SellerTransactions();

  @override
  void initState() {
    seller = _seller.getSeller(widget.bearer);
    tr = _transaction.fetchTransaction(widget.bearer);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
            child: Container(
                color: const Color(0xfffbfbfb),
                width: double.infinity,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 30, right: 30,top: 30),
                        width: double.infinity,
                        height: 150,
                        decoration: const BoxDecoration(
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
                              Text(widget.name,style: TextStyle(
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24,
                                  color: Color(0xff141414)
                              ),),
                              SizedBox(
                                height: 5,
                              ),
                              Text(widget.phone,style: TextStyle(
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
                            FutureBuilder(
                              future: seller,
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  return Container(
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
                                              Text(snapshot.data!.saldo,style: TextStyle(
                                                  fontSize: 42,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'DM Sans',
                                                  color: Color(0xff000000)
                                              ),),
                                            ],
                                          ),
                                        ],
                                      ));
                                } else if (snapshot.hasError) {
                                  return Center(child: Text('${snapshot.error}'));
                                }

                                return const Center(child: CircularProgressIndicator());
                              },
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            transactionHistory(tr),
                        ]),
                      ),
                    ]
                )
            )
        ),
    );
  }
}
