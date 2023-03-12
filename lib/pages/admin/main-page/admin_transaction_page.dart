import 'package:flutter/material.dart';
import 'package:mntmarketpay/common/constant.dart';
import 'package:mntmarketpay/pages/admin/widget/transaction-widget/searchtransaction.dart';

class AdminTransactionPage extends StatefulWidget {
  const AdminTransactionPage({
    super.key,
  });

  @override
  State<AdminTransactionPage> createState() => _AdminTransactionPageState();
}

class _AdminTransactionPageState extends State<AdminTransactionPage> {
  @override
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
                      height: 20,
                    ),
                    Container(
                        padding: EdgeInsets.all(15),
                        width: double.infinity,
                        height: 1000,
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
                            const Text('Transaction History', style: AdminPage.titleTransaction,),
                           SizedBox(
                             height: 5,
                           ),
                           TextField(

                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(width: 1,color: Color(0xfff1f1f1))
                                ),
                                  hintText: 'Search Transaction',
                                  hintStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'DM Sans',
                                      color: Color(0xffbdbdbd)),
                                  prefixIcon: Icon(Icons.search)),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              height: 800,
                              child: SearchTransactionAdmin(),
                            ),


                          ],
                        )

                    ),
                  ]))
        ]),
      ),
    ));
  }
}
