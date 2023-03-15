import 'package:flutter/material.dart';
import 'package:mntmarketpay/common/constant.dart';
import 'package:mntmarketpay/domain/entities/user.dart';

Widget searchAccount(Future<List<Users>> user) {
  return Container(
    width: double.infinity,
    height: 378,
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
            'Account List',
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
        Container(
            padding: const EdgeInsets.only(right: 15, left: 15),
            height: 190,
            child: FutureBuilder(
              future: user,
              builder: (ctx, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, int i) {
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
                                  SizedBox(
                                    width: 150,
                                    child: Text(
                                        snapshot.data![i].nama,
                                        overflow: TextOverflow.ellipsis,
                                        style: AdminPage.accountName
                                    ),),
                                  Text(
                                      snapshot.data![i].noHp,
                                      style: AdminPage.accountNumber
                                  ),
                                ],
                              ),
                              Container(
                                width: 39,
                                height: 39,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(width: 1,color: Color(0xffd8d8d8))
                                ),
                                child: Image.asset('assets/images/detaildot.png'),
                              )
                            ],
                          )
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
       const SizedBox(
          height: 69,
        ),
      ],
    ),
  );
}
