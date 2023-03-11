
import 'package:flutter/material.dart';
import 'package:mntmarketpay/layout/navbar_buyer.dart';

class FailedResponsePage extends StatefulWidget {
  const FailedResponsePage( {super.key}) : super();



  @override
  State<FailedResponsePage> createState() => _FailedResponsePageState();
}

class _FailedResponsePageState extends State<FailedResponsePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 250, left: 30, right: 24),
        decoration: const BoxDecoration(
          color: Color(0xFFFDFDFD),
        ),
        child: Column(
          children: [
            Image.asset('assets/images/failed.png', width: 92.99, height: 97.34),
            SizedBox(
              height: 10,
            ),
            const Text(
              'Payment Failed',
              style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'DM Sans'),
            ),
            const SizedBox(height: 12),
            Text(
              'Sorry, your payment just failed',
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Color(0xFFA6A6A6),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'DM Sans'),
            ),
            const SizedBox(height: 59),
            SizedBox(
              width: 342,
              height: 48,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xFF5258D4)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(31)),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (c) => const BuyerNavBar()));
                },
                child: const Text(
                  'Home',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'DM Sans'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
