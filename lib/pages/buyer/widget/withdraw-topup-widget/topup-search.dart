import 'package:flutter/material.dart';

Widget TopupSearch() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(

        padding: EdgeInsets.only(top: 20),
        child: Text(
          'TopUp History',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              fontFamily: 'DM Sans',
              color: Color(0xff000000)),
        ),
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
      SizedBox(
        height: 10,
      ),
      Container(

          height: 250,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                height:80,
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

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'KFC Sudirman',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'DM Sans',
                                  color: Color(0xff1e1e1e)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '25 March - 19.08',
                              style: TextStyle(
                                  fontSize: 14,
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

                  ],
                ),
              ),
              Container(
                height:80,
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

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'KFC Sudirman',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'DM Sans',
                                  color: Color(0xff1e1e1e)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '25 March - 19.08',
                              style: TextStyle(
                                  fontSize: 14,
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

                  ],
                ),
              ),
              Container(
                height:80,
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

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'KFC Sudirman',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'DM Sans',
                                  color: Color(0xff1e1e1e)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '25 March - 19.08',
                              style: TextStyle(
                                  fontSize: 14,
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

                  ],
                ),
              ),


            ],
          )),

    ],

  );
}
