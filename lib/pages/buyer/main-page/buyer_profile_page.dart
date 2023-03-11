import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mntmarketpay/pages/buyer/language_page.dart';

class BuyerProfilePage extends StatefulWidget {
  const BuyerProfilePage({super.key,});

  @override
  State<BuyerProfilePage> createState() => _BuyerProfilePageState();
}

class _BuyerProfilePageState extends State<BuyerProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 30, right: 30,top: 50),
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
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: (){
                      Clipboard.setData(ClipboardData(text: "081287138898")).then((value) => ScaffoldMessenger.of(context).showSnackBar(
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
                      Text('081287138898',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'DM Sans',
                          color: Color(0xffd7bebe)
                      ),),
                    ],
                  ))


    ]
        ),
      ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
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
                        SizedBox(
                          height: 5,
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
                            Text('12,000,000',style: TextStyle(
                                fontSize: 31,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'DM Sans',
                                color: Color(0xff000000)
                            ),),
                          ],
                        ),
SizedBox(
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
                                padding: EdgeInsets.only(right: 10),

                                decoration: BoxDecoration(
                                  border: Border(right: BorderSide(width: 2,color: Color(0xfff6efef))),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Image.asset('assets/images/topup.png',width: 15,height: 13,),
                                        SizedBox(width: 10,),
                                        Text('Top Up',style: TextStyle(
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
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: <Widget>[
                                        Text('Rp',style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'DM Sans',
                                            color: Color(0xff868383)
                                        ),),
                               SizedBox(width: 5,),
                                        Text('12,000,000',style: TextStyle(
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
                                padding: EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Image.asset('assets/images/expenses.png',width: 15,height: 13,),
                                        SizedBox(width: 10,),
                                        Text('Expenses',style: TextStyle(
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
                                        Text('Rp',style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'DM Sans',
                                            color: Color(0xff868383)
                                        ),),
                                        SizedBox(width: 5,),
                                        Text('12,000,000',style: TextStyle(
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
                  ),
SizedBox(
  height: 20,
),

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
                  Navigator.push(context, MaterialPageRoute(builder: (ctx) => const LanguagePage()));
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
                  )
          ],

        ),
      ),
    ]
    )
      )
    );
  }
}
