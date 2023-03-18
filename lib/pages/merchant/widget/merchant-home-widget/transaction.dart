import 'package:flutter/material.dart';
import 'package:mntmarketpay/domain/entities/transaction.dart';

Widget transactionHistory(Future<List<Transaction>> tr) {
  return Container(
    width: double.infinity,
    height: 313,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
        boxShadow: [
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
          child: Text(
            'Transaction History',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontFamily: 'DM Sans',
                color: Color(0xff000000)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            padding: EdgeInsets.only(right: 15, left: 15),
            height: 190,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15, bottom: 10,top: 10),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(width: 2, color: Color(0xffe9e9e9)))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'IBox',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'DM Sans',
                                color: Color(0xff000000)),
                          ),
                          Text(
                            '25 March - 19.08',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'DM Sans',
                                color: Color(0xff807878)),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'Rp',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'DM Sans',
                                color: Color(0xff000000)),
                          ),
                          Text(
                            '1,460,000',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'DM Sans',
                                color: Color(0xff000000)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15, bottom: 10,top: 10),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                          BorderSide(width: 2, color: Color(0xffe9e9e9)))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'PASTRIP',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'DM Sans',
                                color: Color(0xff000000)),
                          ),
                          Text(
                            '25 March - 19.08',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'DM Sans',
                                color: Color(0xff807878)),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'Rp',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'DM Sans',
                                color: Color(0xff000000)),
                          ),
                          Text(
                            '1,460,000',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'DM Sans',
                                color: Color(0xff000000)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15, bottom: 10,top: 10),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                          BorderSide(width: 2, color: Color(0xffe9e9e9)))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 120,
                          child: Text(
                            'StrongBot Shop',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'DM Sans',
                                color: Color(0xff000000)),
                          ),),
                          Text(
                            '25 March - 19.08',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'DM Sans',
                                color: Color(0xff807878)),
                          ),
                        ],
                      ),
                      Container(
                      child: SingleChildScrollView(
                          child:Row(
                        children: <Widget>[
                          Text(
                            'Rp',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'DM Sans',
                                color: Color(0xff000000)),
                          ),
                          Text(
                            '70,000,000',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'DM Sans',
                                color: Color(0xff000000)),
                          ),
                        ],
                      ))
                      )
                    ],
                  ),
                ),
              ],
            )),
        TextButton(onPressed: (){}, child: Container(
  width: double.infinity,
  height: 46,
  child: Center(
    child: Text('view all', style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        fontFamily: 'DM Sans' ,
        color: Color(0xff000000)),),
  ),
))
      ],
    ),
  );
}
