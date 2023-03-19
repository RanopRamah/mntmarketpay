import 'package:flutter/material.dart';
import 'package:mntmarketpay/domain/entities/transaction.dart';

Widget merchantTransactionList(Future<List<Transaction>> tr) {
  return Container(
    width: double.infinity,
    height: 417,
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

          padding: EdgeInsets.only(left: 30,top: 20),
          child: const Text(
            'Transaction History',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontFamily: 'DM Sans',
                color: Color(0xff000000)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.only(right: 15, left: 15),
          height: 342,
          child: FutureBuilder(
            future: tr,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: snapshot.data!.length,
                  itemBuilder: (BuildContext context, int i) {
                    return Container(
                      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10,top: 10),
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                              BorderSide(width: 2, color: Color(0xffe9e9e9)))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                snapshot.data![i].pengirim,
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'DM Sans',
                                    color: Color(0xff000000)),
                              ),
                              Text(
                               snapshot.data![i].createdAt,
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'DM Sans',
                                    color: Color(0xff807878)),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                             const Text(
                                'Rp',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'DM Sans',
                                    color: Color(0xff000000)),
                              ),
                             Text(
                                snapshot.data![i].nominal,
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'DM Sans',
                                    color: Color(0xff000000)),
                              ),
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
          )
        ),
      ],
    ),
  );
}
