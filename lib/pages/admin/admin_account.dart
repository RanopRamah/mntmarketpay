import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AdminAccountPage extends StatefulWidget {
  const AdminAccountPage({super.key,});

  @override
  State<AdminAccountPage> createState() => _AdminAccountPageState();
}

class _AdminAccountPageState extends State<AdminAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 30, right: 30,top: 50),
              width: double.infinity,
              height: 182,
              decoration: BoxDecoration(
                  color: Color(0xff458EDE),
                  image: DecorationImage(
                      image:
                      AssetImage('assets/images/back_home.png'))),
              child: Column(
                  children : [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  'Good Morning,',
                                  style: TextStyle(
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Color(0xffC5A2A2),
                                  ),
                                ),
                                Text(
                                  'Janji Jiwa - IOH',
                                  style: TextStyle(
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 32,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ],
                            ),),
                          Container(
                              width: 61,
                              height: 61,
                              decoration: BoxDecoration(
                                  color: Color(0xffF6f6f6),
                                  borderRadius: BorderRadius.circular(30)),
                              child:Center(
                                child: Image.asset('assets/images/shop.png',width: 30,height: 30,),)
                          )
                        ]
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                        onTap: (){
                          Clipboard.setData(ClipboardData(text: "081287138898")).then((value) => ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                backgroundColor: Color(0xff458EDE),
                                content: Text('Number Copied!',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'DM Sans',
                                    color: Colors.white
                                ),),)));
                        },

                        child: Row(
                          children: [
                            Image.asset('assets/images/copy.png',width: 20,height: 20,),
                            SizedBox(width: 10,),
                            Text('081287138898',style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'DM Sans',
                                color: Color(0xffd7bebe)
                            ),),
                          ],
                        ))


                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
