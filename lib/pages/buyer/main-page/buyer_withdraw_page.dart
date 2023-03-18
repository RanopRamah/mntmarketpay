import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:mntmarketpay/pages/buyer/widget/buyer-home-widget/withdraw-history.dart';
import 'package:mntmarketpay/pages/buyer/widget/withdraw-topup-widget/topup-search.dart';
import 'package:mntmarketpay/pages/buyer/widget/withdraw-topup-widget/withdraw-search.dart';

import '../../../domain/entities/buyer.dart';
import '../../../domain/usecases/buyer/fetch-buyer.dart';

class BuyerWithdrawPage extends StatefulWidget {
  const BuyerWithdrawPage(this.bearer, {super.key}): super();

  final String bearer;


  @override
  State<BuyerWithdrawPage> createState() => _BuyerWithdrawPageState();
}

class _BuyerWithdrawPageState extends State<BuyerWithdrawPage>
    with TickerProviderStateMixin {
  late Future<Buyer> _buyer;
final buyer = BuyerImpl();

@override
void initState() {
  _buyer = buyer.fetchBuyer(widget.bearer);
  super.initState();
}
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);

    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      color: Color(0xfffbfbfb),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 30, right: 30, top: 30),
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
                color: Color(0xff458EDE),
                image: DecorationImage(
                    image: AssetImage('assets/images/back_home.png'))),
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
                    ),
                  ),
                  Container(
                      width: 61,
                      height: 61,
                      decoration: BoxDecoration(
                          color: Color(0xffFFCB0A),
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(
                          'RN',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'DM Sans',
                              color: Colors.white),
                        ),
                      ))
                ]),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
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
                      Container(
                        padding: EdgeInsets.only(
                          top: 20,
                        ),
                        width: double.infinity,
                        height: 298,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/back_qr.png'))),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/images/test_qr.png',
                              width: 177,
                              height: 201,
                            ),
                            Text(
                              'Raffi Nauval',
                              style: TextStyle(
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24,
                                  color: Color(0xff141414)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '081287138898',
                              style: TextStyle(
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Color(0xffb6aaaa)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                FutureBuilder(
                  future: _buyer ,
                  builder: (context,snapshot){
                  if (snapshot.hasData){
                    return        Container(
                        height: 97,
                        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
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
                        child: Column(children: <Widget>[
                          Row(
                            children: <Widget>[
                              Image.asset(
                                'assets/images/wallet.png',
                                width: 12,
                                height: 10,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Balance',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'DM Sans',
                                    color: Color(0xffaaaaaa)),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'Rp',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'DM Sans',
                                    color: Color(0xff868383)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                snapshot.data!.saldo,
                                style: TextStyle(
                                    fontSize: 31,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'DM Sans',
                                    color: Color(0xff000000)),
                              ),
                            ],
                          ),
                        ]));
                  }
    else if (snapshot.hasError) {
    return Text('${snapshot.error}');
    }
    return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Center(
    child: LoadingAnimationWidget
        .staggeredDotsWave(
    color: Colors.black,
    size: 40,
    ))
    ]);

                    },
                ),


                SizedBox(
                  height: 20,
                ),
                
                Container(
padding: EdgeInsets.all(20),
                  height: 547,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.10),
                        blurRadius: 6.0,
                        spreadRadius: 2.0,
                        offset: Offset(0.0, 0.0),
                      ),
                    ],
                    color: Colors.white
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 5,left: 10,right: 10,bottom: 5),
                        width: 231,
                        height: 41,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffececec)
                        ),
                        child: TabBar(
                            controller: _tabController,
                            unselectedLabelStyle: TextStyle(

                                fontSize: 16,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500),
                            unselectedLabelColor: Color(0xffb2a9a9),
                            labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500),
                            indicator: BoxDecoration(
                              color: Color(0xff5258d4),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            tabs: <Widget>[
                              Tab(
                                text: 'Withdraw',
                              ),
                              Tab(
                                text: 'Top Up',
                              ),
                            ]),
                      ),
                      Container(
                        height: 466,
                        child:     TabBarView(controller: _tabController,
                            children: [
                              Container(
                                child:  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),




                                    Container(
                                      padding: EdgeInsets.all(12),
                                      height: 71,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          border: Border.all(
                                              width: 1, color: Color(0xfff6efef))),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Total Withdraw',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'DM Sans',
                                                color: Color(0xffaaaaaa)),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                'Rp',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: 'DM Sans',
                                                    color: Color(0xff868383)),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                '12,000,000',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: 'DM Sans',
                                                    color: Color(0xff000000)),
                                              ),
                                            ],
                                          ),

                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),

                                     WithdrawSearch()

                                  ],
                                ),
                              ),

                              Container(
                                child:  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),




                                    Container(
                                      padding: EdgeInsets.all(12),
                                      height: 71,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          border: Border.all(
                                              width: 1, color: Color(0xfff6efef))),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Total TopUp',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'DM Sans',
                                                color: Color(0xffaaaaaa)),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                'Rp',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: 'DM Sans',
                                                    color: Color(0xff868383)),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                '12,000,000',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: 'DM Sans',
                                                    color: Color(0xff000000)),
                                              ),
                                            ],
                                          ),

                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),

                                    TopupSearch()

                                  ],
                                ),
                              ),
                        ]),
                      )

                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    )));
  }
}
