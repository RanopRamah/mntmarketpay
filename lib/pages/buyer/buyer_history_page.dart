import 'package:flutter/material.dart';
import 'package:mntmarketpay/pages/buyer/history-widget/transactionlist.dart';

class BuyerHistoryPage extends StatefulWidget {
  const BuyerHistoryPage({super.key,});

  @override
  State<BuyerHistoryPage> createState() => _BuyerHistoryPageState();
}

class _BuyerHistoryPageState extends State<BuyerHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
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
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TransactionList()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
