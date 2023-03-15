import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:mntmarketpay/common/constant.dart';
import 'package:mntmarketpay/domain/entities/admin.dart';
import 'package:mntmarketpay/pages/admin/widget/home-widget/accounthistory.dart';
import 'package:mntmarketpay/pages/admin/widget/home-widget/list_transaction_admin.dart';
import 'package:mntmarketpay/pages/admin/widget/home-widget/topup_withdraw.dart';
import '../../../common/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mntmarketpay/domain/usecases/admin/fetch-admin.dart';

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({
    super.key,
  });

  @override
  State<AdminHomePage> createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  Future<Admin>? _admin;
  final admin = FetchAdminImpl();

  @override
  initState() {
    _admin = admin.fetchAdmin();
    super.initState();
  }

  late SharedPreferences prefs;
  String? phone;
  String? name;
  String? id;

  Future<void> setValue() async {
    prefs = await SharedPreferences.getInstance();
    phone = prefs.getString('phone_customer') ?? '111';
    name = prefs.getString('name_customer') ?? 'id';
    id = prefs.getString('id_customer') ?? '';


  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 98,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/back_home.png'))),
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Admin Dashboard',
                        style: AdminPage.title,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      FutureBuilder(
                        future: _admin,
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(15),
                                  height: 195,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.05),
                                          blurRadius: 6.0,
                                          spreadRadius: 2.0,
                                          offset: Offset(0.0, 0.0),
                                        ),
                                      ],
                                      color: Colors.white),
                                  child: Column(
                                    children: <Widget>[
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
                                            'Exist Balance',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'DM Sans',
                                                color: Color(0xffaaaaaa)),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
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
                                            snapshot.data!.totalSaldo,
                                            style: TextStyle(
                                                fontSize: 31,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'DM Sans',
                                                color: Color(0xff000000)),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                          padding: EdgeInsets.only(
                                              left: 5,
                                              top: 10,
                                              right: 5,
                                              bottom: 10),
                                          width: double.infinity,
                                          height: 75,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 2,
                                                  color: Color(0xffF6EFEF)),
                                              borderRadius:
                                                  BorderRadius.circular(17)),
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                padding:
                                                    EdgeInsets.only(right: 10),
                                                decoration: BoxDecoration(
                                                  border: Border(
                                                      right: BorderSide(
                                                          width: 2,
                                                          color: Color(
                                                              0xfff6efef))),
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Row(
                                                      children: <Widget>[
                                                        Image.asset(
                                                          'assets/images/topup.png',
                                                          width: 15,
                                                          height: 13,
                                                        ),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        Text(
                                                          'User Balance',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontFamily:
                                                                  'DM Sans',
                                                              color: Color(
                                                                  0xffaaaaaa)),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    SingleChildScrollView(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      child: Row(
                                                        children: <Widget>[
                                                          Text(
                                                            'Rp',
                                                            style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontFamily:
                                                                    'DM Sans',
                                                                color: Color(
                                                                    0xff868383)),
                                                          ),
                                                          SizedBox(
                                                            width: 5,
                                                          ),
                                                          Text(
                                                            snapshot.data!.totalBuyer,
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontFamily:
                                                                    'DM Sans',
                                                                color: Color(
                                                                    0xff000000)),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                padding:
                                                    EdgeInsets.only(left: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Row(
                                                      children: <Widget>[
                                                        Image.asset(
                                                          'assets/images/expenses.png',
                                                          width: 15,
                                                          height: 13,
                                                        ),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        Text(
                                                          snapshot.data!.totalSeller,
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontFamily:
                                                                  'DM Sans',
                                                              color: Color(
                                                                  0xffaaaaaa)),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    Container(
                                                        width: 135,
                                                        child:
                                                            SingleChildScrollView(
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          child: Row(
                                                            children: <Widget>[
                                                              Text(
                                                                'Rp',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontFamily:
                                                                        'DM Sans',
                                                                    color: Color(
                                                                        0xff868383)),
                                                              ),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Text(
                                                                '12,000,000',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontFamily:
                                                                        'DM Sans',
                                                                    color: Color(
                                                                        0xff000000)),
                                                              ),
                                                            ],
                                                          ),
                                                        ))
                                                  ],
                                                ),
                                              )
                                            ],
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          } else if (snapshot.hasError) {
                            return Text('${snapshot.error}');
                          }
                          return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                    child: LoadingAnimationWidget
                                        .staggeredDotsWave(
                                  color: Colors.white,
                                  size: 40,
                                ))
                              ]);
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          padding: EdgeInsets.all(15),
                          width: double.infinity,
                          height: 519,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.10),
                                blurRadius: 6.0,
                                spreadRadius: 2.0,
                                offset: Offset(0.0, 0.0),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Transaction History',
                                style: AdminPage.titleTransaction,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 400,
                                child: ListTransactionAdmin(),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Container(
                                  padding: EdgeInsets.only(top: 6),
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                  child: Center(
                                    child: Text(
                                      'view all',
                                      style: AdminPage.viewAll,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )),
                      SizedBox(
                        height: 35,
                      ),
                      TopupWithdraw()
                    ]))
          ],
        ),
      ),
    ));
  }
}
