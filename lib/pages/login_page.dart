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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFFFFFFFF),
          image: DecorationImage(image: AssetImage(LoginPageImage.bg), fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 46, right: 235),
                  child: Image.asset(LoginPageImage.indosat, width: 105, height: 37),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 339),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(LoginPageStrings.title, style: LoginPageStyle.title),
                  const Text(LoginPageStrings.title2, style: LoginPageStyle.title),
                  const SizedBox(height: 24),
                  const Text(LoginPageStrings.subtitle, style: LoginPageStyle.subtitle),
                  const Text(LoginPageStrings.subtitle2, style: LoginPageStyle.subtitle),
                  const SizedBox(height: 40),
                  const Text(LoginPageStrings.instruction, style: LoginPageStyle.instruction),
                  const SizedBox(height: 12),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    decoration: const BoxDecoration(
                      color: Color(0xFFF4F4F4),
                      borderRadius: BorderRadius.all(Radius.circular(12))
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
                      keyboardType: TextInputType.phone,
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
    );
  }
}
