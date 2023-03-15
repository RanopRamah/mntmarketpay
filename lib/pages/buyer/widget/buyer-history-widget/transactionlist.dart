import 'package:flutter/material.dart';


Widget TransactionList() {
  return Container(

    width: double.infinity,
    height: 485,
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
            'Purchase History',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontFamily: 'DM Sans',
                color: Color(0xff000000)),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            padding: EdgeInsets.only(right: 15, left: 15),
            height: 392,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Container(
                  height:110,
                  padding: EdgeInsets.only(left: 15, right: 15, bottom: 10,top: 10),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                          BorderSide(width: 2, color: Color(0xffe9e9e9)))),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'KFC Sudirman',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'DM Sans',
                                color: Color(0xff1e1e1e)),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'Rp',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'DM Sans',
                                    color: Color(0xff1e1e1e)),
                              ),
                              Text(
                                '1,460,000',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'DM Sans',
                                    color: Color(0xff1e1e1e)),
                              ),
                            ],
                          ),


                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          Text(
                            'Time',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'DM Sans',
                                color: Color(0xffc5bbbb)),
                          ),
                          Text(
                            '25 March - 19.08',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'DM Sans',
                                color: Color(0xffc5bbbb)),
                          ),
                        ],
                      ),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          Text(
                            'Unique Code',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'DM Sans',
                                color: Color(0xffc5bbbb)),
                          ),
                          Text(
                            '000123456789',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'DM Sans',
                                color: Color(0xffc5bbbb)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height:110,
                  padding: EdgeInsets.only(left: 15, right: 15, bottom: 10,top: 10),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                          BorderSide(width: 2, color: Color(0xffe9e9e9)))),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'KFC Sudirman',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'DM Sans',
                                color: Color(0xff1e1e1e)),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'Rp',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'DM Sans',
                                    color: Color(0xff1e1e1e)),
                              ),
                              Text(
                                '1,460,000',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'DM Sans',
                                    color: Color(0xff1e1e1e)),
                              ),
                            ],
                          ),


                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          Text(
                            'Time',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'DM Sans',
                                color: Color(0xffc5bbbb)),
                          ),
                          Text(
                            '25 March - 19.08',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'DM Sans',
                                color: Color(0xffc5bbbb)),
                          ),
                        ],
                      ),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          Text(
                            'Unique Code',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'DM Sans',
                                color: Color(0xffc5bbbb)),
                          ),
                          Text(
                            '000123456789',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'DM Sans',
                                color: Color(0xffc5bbbb)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height:110,
                  padding: EdgeInsets.only(left: 15, right: 15, bottom: 10,top: 10),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                          BorderSide(width: 2, color: Color(0xffe9e9e9)))),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'KFC Sudirman',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'DM Sans',
                                color: Color(0xff1e1e1e)),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'Rp',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'DM Sans',
                                    color: Color(0xff1e1e1e)),
                              ),
                              Text(
                                '1,460,000',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'DM Sans',
                                    color: Color(0xff1e1e1e)),
                              ),
                            ],
                          ),


                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          Text(
                            'Time',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'DM Sans',
                                color: Color(0xffc5bbbb)),
                          ),
                          Text(
                            '25 March - 19.08',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'DM Sans',
                                color: Color(0xffc5bbbb)),
                          ),
                        ],
                      ),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          Text(
                            'Unique Code',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'DM Sans',
                                color: Color(0xffc5bbbb)),
                          ),
                          Text(
                            '000123456789',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'DM Sans',
                                color: Color(0xffc5bbbb)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),  Container(
                  height:110,
                  padding: EdgeInsets.only(left: 15, right: 15, bottom: 10,top: 10),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                          BorderSide(width: 2, color: Color(0xffe9e9e9)))),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'KFC Sudirman',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'DM Sans',
                                color: Color(0xff1e1e1e)),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'Rp',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'DM Sans',
                                    color: Color(0xff1e1e1e)),
                              ),
                              Text(
                                '1,460,000',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'DM Sans',
                                    color: Color(0xff1e1e1e)),
                              ),
                            ],
                          ),


                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          Text(
                            'Time',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'DM Sans',
                                color: Color(0xffc5bbbb)),
                          ),
                          Text(
                            '25 March - 19.08',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'DM Sans',
                                color: Color(0xffc5bbbb)),
                          ),
                        ],
                      ),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          Text(
                            'Unique Code',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'DM Sans',
                                color: Color(0xffc5bbbb)),
                          ),
                          Text(
                            '000123456789',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'DM Sans',
                                color: Color(0xffc5bbbb)),
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
