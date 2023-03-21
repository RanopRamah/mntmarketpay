import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:mntmarketpay/domain/entities/topup.dart';
import 'package:mntmarketpay/domain/entities/transaction.dart';
import 'package:mntmarketpay/domain/entities/withdraw.dart';
import 'package:mntmarketpay/domain/usecases/buyer/buyer-topup-list.dart';
import 'package:mntmarketpay/domain/usecases/buyer/buyer-transaction-list.dart';
import 'package:mntmarketpay/pages/buyer/widget/buyer-home-widget/topup-history.dart';
import 'package:mntmarketpay/pages/buyer/widget/buyer-home-widget/transaction.dart';
import 'package:mntmarketpay/pages/buyer/widget/buyer-home-widget/withdraw-history.dart';

import '../../../domain/entities/buyer.dart';

import '../../../domain/usecases/buyer/buyer-withdraw-list.dart';
import '../../../domain/usecases/buyer/fetch-buyer.dart';
import '../../../domain/usecases/buyer/buyer-transaction-list.dart';

class BuyerHomePage extends StatefulWidget {
  const BuyerHomePage(this.bearer, this.name, this.phone, {super.key}): super();

  final String bearer;
  final String name;
  final String phone;

  @override
  State<BuyerHomePage> createState() => _BuyerHomePageState();

}

class _BuyerHomePageState extends State<BuyerHomePage> {
  late Future<Buyer> _buyer;
  final buyer = IndexBuyer();
  late Future<List<Transaction>> _tr;
  final _transaction = BuyerTransactionsList();
  late Future<List<TopUp>> _tp;
  final _topup = BuyerTopupList();
  late Future<List<Withdraw>> _wd;
  final _withdraw = BuyerWithdrawList();

  @override
  void initState() {
setValue();
    super.initState();
  }

  Future<void> setValue() async {
    setState(() {
      _buyer = buyer.getBuyer(widget.bearer);
      _tr = _transaction.BuyerTransaction(widget.bearer);
      _tp = _topup.BuyerTopUp(widget.bearer);
      _wd = _withdraw.BuyerWithdraw(widget.bearer);
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
        body: RefreshIndicator(
        onRefresh: setValue,
        child : SingleChildScrollView(
          child: FutureBuilder(
            future: _buyer,
            builder: (context, snapshot) {
              if (snapshot.hasData){
                return     Container(
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
                                      children:  <Widget>[
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
                          Container(
                            padding: EdgeInsets.all(20),
                            width: double.infinity,
                            child: Column(
                              children: <Widget>[
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
                                SizedBox(
                                  height: 5,
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
                                SizedBox(
                                  height: 30,
                                ),

                                TransactionHistory(_tr, context),
                                SizedBox(
                                  height: 15,
                                ),
                                TopupHistory(_tp),
                                SizedBox(
                                  height: 15,
                                ),
                                WithdrawHistory(_wd)
                              ],
                            ),
                          )

                        ]
                    )
                );
              }else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
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


        )
        )
    );
  }
}
