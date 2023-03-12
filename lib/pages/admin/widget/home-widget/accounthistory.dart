import 'package:flutter/material.dart';
import 'package:mntmarketpay/common/constant.dart';

Widget AccountHistory() {
  return Container(

    width: double.infinity,
    height: 413,
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
            'Account History',
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
                        children: const <Widget>[
                          SizedBox(
                            width: 150,
                          child: Text(
                            'Nana Tasus Maulana',
                            overflow: TextOverflow.ellipsis,
                            style: AdminPage.accountName
                          ),),
                          Text(
                            '081287138898',
                            style: AdminPage.accountNumber
                          ),
                        ],
                      ),

                      Column(
                        children: const <Widget>[
                        Text('Created Account',style: AdminPage.createdAccount,),
                          Text('25 March - 19.08',style: AdminPage.createdAt,)
                        ],
                      ),
                        ],
                      )

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
                          children: const <Widget>[
                            SizedBox(
                              width: 150,
                              child: Text(
                                  'Didit Ghaffar',
                                  overflow: TextOverflow.ellipsis,
                                  style: AdminPage.accountName
                              ),),
                            Text(
                                '081287138898',
                                style: AdminPage.accountNumber
                            ),
                          ],
                        ),

                        Column(
                          children: const <Widget>[
                            Text('Created Account',style: AdminPage.createdAccount,),
                            Text('25 March - 19.08',style: AdminPage.createdAt,)
                          ],
                        ),
                      ],
                    )

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
                          children: const <Widget>[
                            SizedBox(
                              width: 150,
                              child: Text(
                                  'Daniel Agustian',
                                  overflow: TextOverflow.ellipsis,
                                  style: AdminPage.accountName
                              ),),
                            Text(
                                '081287138898',
                                style: AdminPage.accountNumber
                            ),
                          ],
                        ),

                        Column(
                          children: const <Widget>[
                            Text('Created Account',style: AdminPage.createdAccount,),
                            Text('25 March - 19.08',style: AdminPage.createdAt,)
                          ],
                        ),
                      ],
                    )

                ),

              ],
            )),
        SizedBox(
          height: 69,
        ),
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
