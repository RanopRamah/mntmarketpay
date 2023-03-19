import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:mntmarketpay/domain/entities/topup.dart';

Widget TopupSearch(Future <List<TopUp>> tp) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(

        padding: EdgeInsets.only(top: 20),
        child: Text(
          'Top Up History',
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
      FutureBuilder(
        future: tp,
          builder: (context, snapshot) {
            if (snapshot.hasData){
             return Container(

                  height: 250,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                  itemCount: snapshot.data!.length,
                  itemBuilder: (BuildContext context, int i){
                    return Container(
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
                                    snapshot.data![i].pengirim,
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
                                    snapshot.data![i].createdAt,
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
                                    snapshot.data![i].nominal,
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
                    );

                  }




                  ));
            }
            else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            } else {
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
            }
          }

          )




    ],

  );
}
