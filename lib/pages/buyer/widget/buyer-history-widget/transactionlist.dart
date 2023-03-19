import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../../domain/entities/transaction.dart';


Widget TransactionList(Future <List<Transaction>> tr) {
  return FutureBuilder(
    future: tr,
    builder: (context, snapshot) {
      if (snapshot.hasData){
        return Container(

          width: double.infinity,
          height: 485,
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

                padding: const EdgeInsets.only(left: 30,top: 20),
                child: const Text(
                  'Purchase History',
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
                  height: 392,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (BuildContext context, int i){
                      return    Container(
                        height:110,
                        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10,top: 10),
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom:
                                BorderSide(width: 2, color: Color(0xffe9e9e9)))),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width : 200,
                                  child:  Text(
                                    snapshot.data![i].penerima,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'DM Sans',
                                        color: Color(0xff1e1e1e)),
                                  ),
                                ),

                                Row(
                                  children: <Widget>[
                                    const Text(
                                      'Rp',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'DM Sans',
                                          color: Color(0xff1e1e1e)),
                                    ),
                                    Text(
                                      snapshot.data![i].nominal,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'DM Sans',
                                          color: Color(0xff1e1e1e)),
                                    ),
                                  ],
                                ),


                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:  <Widget>[
                               const Text(
                                  'Time',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'DM Sans',
                                      color: Color(0xffc5bbbb)),
                                ),
                                Text(
                                  snapshot.data![i].createdAt,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'DM Sans',
                                      color: Color(0xffc5bbbb)),
                                ),
                              ],
                            ),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:  <Widget>[
                                const Text(
                                  'Unique Code',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'DM Sans',
                                      color: Color(0xffc5bbbb)),
                                ),
                                Text(
                                  snapshot.data![i].nota,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'DM Sans',
                                      color: Color(0xffc5bbbb)),
                                ),
                              ],
                            )
                          ],
                        ),
                      );

                    }
                  )



                  )

            ],
          ),
        );
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
  );


}
