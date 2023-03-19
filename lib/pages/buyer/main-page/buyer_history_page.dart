import 'package:flutter/material.dart';
import 'package:mntmarketpay/pages/buyer/widget/buyer-history-widget/transactionlist.dart';

import '../../../domain/entities/buyer.dart';
import '../../../domain/entities/transaction.dart';
import '../../../domain/usecases/buyer/buyer-transaction-list.dart';
import '../../../domain/usecases/buyer/fetch-buyer.dart';


class BuyerHistoryPage extends StatefulWidget {
  const BuyerHistoryPage(this.bearer, this.name, this.phone, {super.key,});

  final String bearer;
  final String name;
  final String phone;

  @override
  State<BuyerHistoryPage> createState() => _BuyerHistoryPageState();
}

class _BuyerHistoryPageState extends State<BuyerHistoryPage> {
  late Future<Buyer> _buyer;
  final buyer = IndexBuyer();
  late Future<List<Transaction>> _tr;
  final _transaction = BuyerTransactionsList();

  @override
  void initState() {
    setValue();
    super.initState();
  }
  Future<void> setValue() async {
    setState(() {
      _buyer = buyer.getBuyer(widget.bearer);
      _tr = _transaction.BuyerTransaction(widget.bearer);

    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:RefreshIndicator(
        onRefresh:   setValue,
        child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
        child: Column(
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
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  <Widget>[
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
                            widget.name,
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
                  TransactionList(_tr)
                ],
              ),
            )
          ],
        ),
      ),
              )
      )
    );
  }
}
