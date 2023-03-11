import 'package:flutter/material.dart';

/// Anything that common we used on any page
/// including Strings, Color Hex, and others...
/// just put it right on here

/// Clean Code Rule..

/* -- Universal -- */

class Fonts {
  static const mainFamily = 'DM Sans';
}

/* -- Buyer NavBar -- */

class BNavbarIcons {
  static const home = 'assets/images/home.png';
  static const history = 'assets/images/history.png';
  static const pay = 'assets/images/pay.png';
  static const withdraw = 'assets/images/withdraw.png';
  static const profile = 'assets/images/profile.png';
}

/* --  HomePage Section -- */

class HomePageStrings {
  static const greetings = 'Good Morning,';
  static const balance = 'Balance';
  static const history = 'Transaction History';
  static const inventory = 'Inventory';
  static const more = 'View All';
}

class HomePageImage {
  static const copy = 'assets/image/copy.png';
  static const wallet = 'assets/image/wallet.png';
  static const headerBg = 'assets/image/headerBg.png';
}

class HomePageColor {
  static const wierdRed = 0xFFC5A2A2;
  static const gray = 0xFFAAAAAA;
  static const gray2 = 0xFF807878;
  static const commonBlack = 0xFF00000;
}

/* --  LoginPage Section -- */

class LoginPageStrings {
  static const title = 'The Easier Way To Pay';
  static const instruction = 'Enter your phone number to continue';
  static const countryCode = '+62';
  static const agreement = 'By continuing, you are agree to the terms and conditions';
}

class LoginPageImage {
  static const indosat = 'assets/image/indosat.png';
  static const submit = 'assets/image/submit.png';
}

class LoginPageColor {
  static const title = 0xFF000000;
  static const instruction = 0xFF000000;
  static const countryCode = 0xFF000000;
  static const agreement = 0xFF000000;
  static const textFieldBg = 0xFFD9D9D9;
  static const submitBg = 0xFFE8E0E0;
}

/* --  AmountPage Section -- */

class AmountPageImages {
  static const store = 'assets/images/store-icon.png';
  static const backspace = 'assets/images/backspace.png';
  static const bg = 'assets/images/amount_bg.png';
}

/* --  LanguagePage Section -- */

class LanguagePageImages {
  static const exit = 'assets/images/exit.png';
  static const select = 'assets/images/select.png';
}

class LanguagePageStyle {
  static const TextStyle title = TextStyle(
    color: Color(0xFF141414),
    fontFamily: Fonts.mainFamily,
    fontWeight: FontWeight.w700,
    fontSize: 28,
  );
  static const TextStyle selection = TextStyle(
    color: Color(0xFF141414),
    fontFamily: Fonts.mainFamily,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle submit = TextStyle(
    color: Color(0xFFFFFFFF),
    fontFamily: Fonts.mainFamily,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
}