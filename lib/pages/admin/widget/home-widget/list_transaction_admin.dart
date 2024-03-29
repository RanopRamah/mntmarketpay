import 'package:flutter/material.dart';
import 'package:mntmarketpay/domain/entities/transaction.dart';
import '../../../../common/constant.dart';

Widget listTransactionAdmin(Future<List<Transaction>> tr){
  return FutureBuilder(
    future: tr,
    builder: (ctx, snapshot) {
      if (snapshot.hasData) {
        return ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (BuildContext context, int i) {
            return Container(
              height: 174,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color(0xfff3f3f3),
                  borderRadius: BorderRadius.circular(18)),
              margin: const EdgeInsets.only(bottom: 15),
              padding: const EdgeInsets.only(
                  top: 25, bottom: 10, left: 30, right: 20),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Text(
                          'Buyer',
                          style: AdminPage.transactionBuySell),
                      Text(
                          'Merchant',
                          style: AdminPage.transactionBuySell),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 120,
                        child: Text(
                            snapshot.data![i].pengirim,
                            overflow: TextOverflow.ellipsis,
                            style: AdminPage.transactionName
                        ),
                      ),
                      Image.asset(
                        'assets/images/trade.png',
                        width: 26,
                        height: 26,
                      ),
                      SizedBox(
                          width: 100,
                          child: Text(
                              snapshot.data![i].penerima,
                              textAlign: TextAlign.end,
                              overflow: TextOverflow.ellipsis,
                              style: AdminPage.transactionName
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                          'Amount',
                          style: AdminPage.transactionAmountUQ
                      ),
                      Text(
                          'Rp${snapshot.data![i].nominal}',
                          style:AdminPage.transactionNumAmountUQ
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                          'Unique Code',
                          style: AdminPage.transactionAmountUQ
                      ),
                      Text(
                          snapshot.data![i].nota,
                          style: AdminPage.transactionNumAmountUQ
                      )
                    ],
                  )
                ],
              ),
            );
          },
        );
      } else if (snapshot.hasError) {
        return Center(child: Text('${snapshot.error}'));
      }

      return const Center(child: CircularProgressIndicator());
    },
  );
}