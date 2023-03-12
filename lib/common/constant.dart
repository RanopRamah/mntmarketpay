import 'package:flutter/material.dart';

/// Anything that common we used on any page
/// including Strings, Color Hex, and others...
/// just put it right on here

/// Clean Code Rule..

/* -- Universal -- */

class Fonts {
  static const mainFamily = 'DM Sans';
}

/* -- BuyerNavBar -- */

class BNavbarIcons {
  static const home = 'assets/images/home.png';
  static const history = 'assets/images/history.png';
  static const transaction = 'assets/images/transaction.png';
  static const topup = 'assets/images/topupnav.png';
  static const pay = 'assets/images/pay.png';
  static const withdraw = 'assets/images/withdraw.png';
  static const profile = 'assets/images/profile.png';
}

/* --  BuyerHomePage Section -- */

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
  static const title = 'Streamline your';
  static const title2 = 'payments with ease';
  static const subtitle = 'Say goodbye to the hassle and enjoy';
  static const subtitle2 = 'a simplified payment experience';
  static const instruction = 'Enter your phone number to continue';
  static const agreement = 'By continuing, you are agree to Indosat Ooredo';
  static const agreement2 = 'Terms of Service';
}
class LoginPageImage {
  static const bg = 'assets/images/login-bg.png';
  static const countryCode = 'assets/images/country-code.png';
  static const submit = 'assets/images/submit.png';
  static const indosat = 'assets/images/indosat.png';
}
class LoginPageColor {
  static const title = 0xFF000000;
  static const instruction = 0xFF000000;
  static const agreement = 0xFF000000;
  static const textFieldBg = 0xFFD9D9D9;
  static const submitBg = 0xFFE8E0E0;
}

class LoginPageStyle {
  static const TextStyle title = TextStyle(
    color: Color(0xFF141414),
    fontFamily: Fonts.mainFamily,
    fontWeight: FontWeight.w700,
    fontSize: 34,
  );
  static const TextStyle subtitle = TextStyle(
    color: Color(0xFF9A9A9A),
    fontFamily: Fonts.mainFamily,
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );
  static const TextStyle instruction = TextStyle(
    color: Color(0xFF635F5F),
    fontFamily: Fonts.mainFamily,
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );
  static const TextStyle agreement = TextStyle(
    color: Color(0xFFB2ADAD),
    fontFamily: Fonts.mainFamily,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );
  static const TextStyle agreement2 = TextStyle(
    color: Color(0xFF6340AD),
    fontFamily: Fonts.mainFamily,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );
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

class AdminPage{
  static const TextStyle title = TextStyle(
    color: Color(0xFF000000),
    fontFamily: Fonts.mainFamily,
    fontWeight: FontWeight.w700,
    fontSize: 32,
  );
  static const TextStyle titleTransaction = TextStyle(
    color: Color(0xFF000000),
    fontFamily: Fonts.mainFamily,
    fontWeight: FontWeight.w700,
    fontSize: 24,
  );
  static const TextStyle transactionName = TextStyle(
    color: Color(0xFF000000),
    fontFamily: Fonts.mainFamily,
    fontWeight: FontWeight.w700,
    fontSize: 16,
  );
  static const TextStyle transactionBuySell = TextStyle(
    color: Color(0xFFa7a3a3),
    fontFamily: Fonts.mainFamily,
    fontWeight: FontWeight.w400,
    fontSize: 13,
    );
  static const TextStyle transactionNumAmountUQ = TextStyle(
    color: Color(0xFF454649),
    fontFamily: Fonts.mainFamily,
    fontWeight: FontWeight.w700,
    fontSize: 14,
    );
  static const TextStyle transactionAmountUQ  = TextStyle(
    color: Color(0xFF9b9b9b),
    fontFamily: Fonts.mainFamily,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    );
  static const TextStyle viewAll  = TextStyle(
    color: Color(0xFF000000),
    fontFamily: Fonts.mainFamily,
    fontWeight: FontWeight.w400,
    fontSize: 20,
    );

}