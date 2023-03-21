import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mntmarketpay/domain/entities/seller.dart';
import 'package:mntmarketpay/domain/usecases/seller/index_seller.dart';
import 'package:mntmarketpay/pages/language_page.dart';
import 'package:mntmarketpay/pages/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MerchantProfilePage extends StatefulWidget {
  const MerchantProfilePage(this.bearer, this.name, this.phone, {super.key}) : super();

  final String bearer;
  final String name;
  final String phone;

  @override
  State<MerchantProfilePage> createState() => _MerchantProfilePageState();
}

class _MerchantProfilePageState extends State<MerchantProfilePage> {
  late SharedPreferences _prefs;
  late Future<Seller> _seller;
  final seller = IndexSeller();

  @override
  void initState() {
    _seller = seller.getSeller(widget.bearer);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 30, right: 30,top: 50),
                    width: double.infinity,
                    height: 182,
                    decoration: BoxDecoration(
                        color: Color(0xff458EDE),
                        image: DecorationImage(
                            image:
                            AssetImage('assets/images/back_home.png'))),
                    child: Column(
                        children : [
                          Row(
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
                          const SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                              onTap: (){
                                Clipboard.setData(ClipboardData(text: widget.phone)).then((value) => ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      backgroundColor: Color(0xff458EDE),
                                      content: Text('Number Copied!',style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'DM Sans',
                                          color: Colors.white
                                      ),),)));
                              },
                              child: Row(
                                children: [
                                  Image.asset('assets/images/copy.png',width: 20,height: 20,),
                                  SizedBox(width: 10,),
                                  Text(widget.phone ,style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'DM Sans',
                                      color: Color(0xffd7bebe)
                                  ),),
                                ],
                              )),
                        ]
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: <Widget> [
                        FutureBuilder(
                          future: _seller,
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return Container(
                                padding: const EdgeInsets.all(15),
                                height: 195,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.05),
                                        blurRadius: 6.0,
                                        spreadRadius: 2.0,
                                        offset: Offset(0.0, 0.0),
                                      ),
                                    ],
                                    color: Colors.white
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
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        const Text('Rp',style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'DM Sans',
                                            color: Color(0xff868383)
                                        ),),
                                        const SizedBox(width: 10,),
                                        Text(snapshot.data!.saldo,style: const TextStyle(
                                            fontSize: 31,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'DM Sans',
                                            color: Color(0xff000000)
                                        ),),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                        padding: EdgeInsets.only(left: 5,top: 10,right: 5,bottom: 10),
                                        width: double.infinity,
                                        height: 75,
                                        decoration: BoxDecoration(
                                            border: Border.all(width: 2, color: Color(0xffF6EFEF)),
                                            borderRadius: BorderRadius.circular(17)
                                        ),
                                        child:Row(
                                          children: <Widget>[
                                            Container(
                                              padding: const EdgeInsets.only(right: 10),
                                              decoration: const BoxDecoration(
                                                border: Border(right: BorderSide(width: 2,color: Color(0xfff6efef))),
                                              ),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      Image.asset('assets/images/topup.png',width: 15,height: 13,),
                                                      const SizedBox(width: 10,),
                                                      const Text('Income',style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w500,
                                                          fontFamily: 'DM Sans',
                                                          color: Color(0xffaaaaaa)
                                                      ),),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  SingleChildScrollView(
                                                    scrollDirection: Axis.horizontal,
                                                    child: Row(
                                                      children: <Widget>[
                                                       const Text('Rp',style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w500,
                                                            fontFamily: 'DM Sans',
                                                            color: Color(0xff868383)
                                                        ),),
                                                        const SizedBox(width: 5,),
                                                        Text(snapshot.data!.transaksi,style: const TextStyle(
                                                            fontSize: 20,
                                                            fontWeight: FontWeight.w500,
                                                            fontFamily: 'DM Sans',
                                                            color: Color(0xff000000)
                                                        ),),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.only(left: 10),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      Image.asset('assets/images/expenses.png',width: 15,height: 13,),
                                                      SizedBox(width: 10,),
                                                      Text('Withdraw',style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w500,
                                                          fontFamily: 'DM Sans',
                                                          color: Color(0xffaaaaaa)
                                                      ),),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Container(
                                                      width: 135,
                                                      child:
                                                      SingleChildScrollView(
                                                        scrollDirection: Axis.horizontal,
                                                        child: Row(
                                                          children: <Widget>[
                                                            const Text('Rp',style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight: FontWeight.w500,
                                                                fontFamily: 'DM Sans',
                                                                color: Color(0xff868383)
                                                            ),),
                                                            Text(snapshot.data!.withdraw,style: const TextStyle(
                                                                fontSize: 20,
                                                                fontWeight: FontWeight.w500,
                                                                fontFamily: 'DM Sans',
                                                                color: Color(0xff000000)
                                                            ),),
                                                          ],
                                                        ),))
                                                ],

                                              ),
                                            )
                                          ],
                                        )
                                    ),
                                  ],
                                ),
                              );
                            } else if (snapshot.hasError){
                              return Center(child: Text('${snapshot.error}'));
                            }

                            return const Center(child: CircularProgressIndicator());
                          },
                        ),
                        const SizedBox(height: 20),
                        Container(
                          height: 58,
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
                              color: Colors.white
                          ),
                          padding: EdgeInsets.only(left: 15,top: 10,right: 15,bottom: 10),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (ctx) => const LanguagePage('S')));
                              });
                            },
                            child: Center(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Language',style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'DM Sans',
                                          color: Color(0xff000000)
                                      ),),
                                      Text('English (United States)',style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'DM Sans',
                                          color: Color(0xffc3c3c3)
                                      ),),
                                    ]
                                )
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() async {
                              _prefs = await SharedPreferences.getInstance();
                              _prefs.remove('id');
                              _prefs.remove('nama');
                              _prefs.remove('no_hp');
                              _prefs.remove('tipe');
                              _prefs.remove('created_at');
                              _prefs.remove('updated_at');
                              _prefs.remove('token');
                              _prefs.setBool('is_login', false);
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => LoginPage()));
                            });
                          },
                          child: Container(
                              height: 58,
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
                                  color: Colors.white
                              ),
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/logout.png',width: 24,height: 24,),
                                    SizedBox(width: 10,),
                                    Text('Logout',style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'DM Sans',
                                        color: Color(0xffB83333)
                                    ),),
                                  ],
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                ]
            )
        )
    );
  }
}
