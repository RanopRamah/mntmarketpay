import 'package:flutter/material.dart';
import 'package:mntmarketpay/common/constant.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 850,
          decoration: const BoxDecoration(
            color: Color(0xFFFFFFFF),
            image: DecorationImage(image: AssetImage(LoginPageImage.bg), fit: BoxFit.fill),
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 59),
                child: Center(
                  child: Image.asset(LoginPageImage.indosat, width: 105, height: 37),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 36.21),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(LoginPageStrings.instruction, style: LoginPageStyle.instruction),
                    const SizedBox(height: 12),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 24),
                      decoration: const BoxDecoration(
                        color: Color(0xFFFFFEFE),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(91, 91, 91, 0.1),
                            blurRadius: 6.0,
                            spreadRadius: 2.0,
                            offset: Offset(0.0, 0.0),
                          ),
                        ],
                      ),
                      height: 46,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your Phone Number',
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Image.asset(LoginPageImage.countryCode, width: 50, height: 50),
                          ),
                          suffixIcon: Padding(
                              padding: const EdgeInsets.all(4),
                              child: GestureDetector(
                                onTap: () {},
                                child: Image.asset(LoginPageImage.submit, width: 55.63, height: 37),
                              )
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(LoginPageStrings.agreement, style: LoginPageStyle.agreement),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(LoginPageStrings.agreement2, style: LoginPageStyle.agreement2),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
