import 'package:flutter/material.dart';

Widget MerchantTransactionList() {
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
            padding: EdgeInsets.only(right: 15, left: 15),
            height: 342,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15, bottom: 10,top: 10),
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom:
                          BorderSide(width: 2, color: Color(0xffe9e9e9)))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
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
                        children: const <Widget>[
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
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom:
                          BorderSide(width: 2, color: Color(0xffe9e9e9)))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
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
                        children: const <Widget>[
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
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom:
                          BorderSide(width: 2, color: Color(0xffe9e9e9)))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          SizedBox(
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
                      Row(
                        children: const <Widget>[
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
                      )
                    ],
                  ),
                ),

              ],
            )),

      ],
    ),
  );
}
