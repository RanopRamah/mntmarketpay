import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mntmarketpay/domain/entities/transaction.dart';
import 'package:mntmarketpay/domain/usecases/seller/transaction_history.dart';
import 'package:mntmarketpay/pages/merchant/widget/merchant-history-widget/merchant_transactionlist.dart';


class MerchantHistoryPage extends StatefulWidget {
  const MerchantHistoryPage(this.bearer, this.name, {super.key}) : super();

  final String name;
  final String bearer;

  @override
  State<MerchantHistoryPage> createState() => _MerchantHistoryPageState();
}

class _MerchantHistoryPageState extends State<MerchantHistoryPage> {
  late Future<List<Transaction>> tr;
  final _transaction = SellerTransactions();

  @override
  void initState() {
    tr = _transaction.fetchTransaction(widget.bearer);
    super.initState();
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
                       const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            merchantTransactionList(tr),
                          ],
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}
