import 'dart:async';
import 'package:bcrypt/bcrypt.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mntmarketpay/layout/navbar_buyer.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PinPage extends StatefulWidget {
  const PinPage({Key? key}) : super(key: key);

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  late SharedPreferences _prefs;
  TextEditingController controller = TextEditingController();

  String? _pin;
  String? _id;
  bool isErrorPin = false;
  bool isSubmit = false;
  bool checkPIN = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(color: Color(0xFFFBFBFB)),
          padding: const EdgeInsets.only(top: 190),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Masukkan PIN',
                  style: TextStyle(
                    fontSize: 32,
                    fontFamily: 'Euclid Circular B',
                    fontWeight: FontWeight.w600,
                    color: Color(0xff222222),
                  ),
                ),
                const Text(
                  'Masukkan PIN anda untuk melanjutkan',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Euclid Circular B',
                      fontWeight: FontWeight.w500,
                      color: Color(0xffa6a6a6)),
                ),
                const SizedBox(height: 20),
                Visibility(
                  visible: isErrorPin,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/image/wrong-pin.png'),
                        ),
                        const Text(
                          'PIN Salah!',
                          style: TextStyle(
                            fontFamily: 'Euclid Circular B',
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                            color: Color(0xffDD3960),
                          ),
                        ),
                      ]),
                ),
                const SizedBox(height: 60),
                SizedBox(
                  height: 50,
                  width: 300,
                  child: PinCodeTextField(
                    autoFocus: true,
                    controller: controller,
                    appContext: context,
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    length: 4,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    pinTheme: PinTheme(
                      fieldWidth: 55,
                      borderWidth: 4,
                      inactiveColor: const Color(0xffd9d9d9),
                    ),
                    onChanged: (value) {},
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(builder: (ctx) => const BuyerNavBar()),
                                (route) => false,
                          );
                        },
                        child: const Text(
                          'Batalkan',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Euclid Circular B',
                            fontSize: 20,
                            color: Color(0xffDD3960),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      decoration: BoxDecoration(
                          color: isSubmit
                              ? const Color.fromARGB(255, 156, 160, 252)
                              : const Color(0xff5258D4),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton(
                        onPressed: isSubmit
                            ? null
                            : () {
                          setState(() {
                            isSubmit = true;
                          });

                          checkPIN = BCrypt.checkpw(
                              controller.text, _pin.toString());
                          if (checkPIN) {
                            /* -- Post Payment -- */
                          } else {
                            Timer(const Duration(seconds: 1), () {
                              setState(() {
                                isErrorPin = true;
                                isSubmit = false;
                              });
                            });
                          }
                        },
                        child: const Text(
                          'Lanjutkan',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Euclid Circular B',
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 35),
                Visibility(
                  visible: isSubmit,
                  child: const CircularProgressIndicator(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
