import 'package:flutter/material.dart';
import 'package:mntmarketpay/common/constant.dart';
import 'package:mntmarketpay/layout/navbar_buyer.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  bool isID = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 55),
        decoration: const BoxDecoration(color: Color(0xFFFBFBFB)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (ctx) => const BuyerNavBar()), (route) => false,
                  );
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  border: Border.all(width: 1,color: Color(0xffd2d2d2))
                ),
                margin: const EdgeInsets.only(bottom: 24),
                child: Image.asset(
                  LanguagePageImages.exit,
                  color: Colors.black54,
                  width: 52,
                  height: 54,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 28),
              child: const Text('Language Preferences', style: LanguagePageStyle.title),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isID = false;
                });
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.05),
                      blurRadius: 6.0,
                      spreadRadius: 2.0,
                      offset: Offset(0.0, 0.0),
                    ),
                  ],
                ),
                  child: ListTile(
                    title: const Text('English (United States)', style: LanguagePageStyle.selection),
                    trailing: Visibility(
                      visible: isID ? false : true,
                      child: Image.asset(LanguagePageImages.select, width: 20, height: 15),
                    ),
                  ),
                ),
              ),
            
            GestureDetector(
              onTap: () {
                setState(() {
                  isID = true;
                });
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 64),
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(12),
                 boxShadow: [
                   BoxShadow(
                     color: Color.fromRGBO(0, 0, 0, 0.05),
                     blurRadius: 6.0,
                     spreadRadius: 2.0,
                     offset: Offset(0.0, 0.0),
                   ),
                 ],
               ),
                  child: ListTile(
                    title: const Text('Bahasa Indonesia', style: LanguagePageStyle.selection),
                    trailing: Visibility(
                      visible: isID ? true : false,
                      child: Image.asset(LanguagePageImages.select, width: 20, height: 15),
                    ),
                  ),
                ),
              ),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF5258D4)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(11)),
                  )),
                ),
                child: const Text('Confirm', style: LanguagePageStyle.submit),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
