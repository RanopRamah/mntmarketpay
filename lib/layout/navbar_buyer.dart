import 'package:flutter/material.dart';
import 'package:mntmarketpay/common/constant.dart';
import 'package:mntmarketpay/pages/buyer/main-page/buyer_history_page.dart';
import 'package:mntmarketpay/pages/buyer/main-page/buyer_home_page.dart';
import 'package:mntmarketpay/pages/buyer/main-page/buyer_withdraw_page.dart';
import 'package:mntmarketpay/pages/buyer/main-page/buyer_profile_page.dart';
import 'package:mntmarketpay/pages/buyer/main-page/buyer_scan_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BuyerNavBar extends StatefulWidget {
  const BuyerNavBar({Key? key}) : super(key: key);

  @override
  State<BuyerNavBar> createState() => _BuyerNavBarState();
}

class _BuyerNavBarState extends State<BuyerNavBar> {
  late SharedPreferences _prefs;
  String? bearer;
  String? name;
  String? phone;
  int _selectedPage = 0;

   late final List<Widget> _pages = <Widget> [
    BuyerHomePage(bearer!,name!, phone!),
    BuyerHistoryPage(bearer!,name!,phone!),
    BuyerScanPage(),
    BuyerWithdrawPage(bearer!,name!,phone!),
    BuyerProfilePage(bearer!, name!,phone!),
  ];

  Future<void> setToken() async {
    _prefs = await SharedPreferences.getInstance();
    setState(() {
      bearer = _prefs.getString('token') ?? 'bearer';
      name = _prefs.getString('nama');
      phone = _prefs.getString('no_hp');
    });
  }

  @override
  void initState() {
    setToken();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedPage),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: _onItemTapped,
        elevation: 0,
        iconSize: 29,
        showUnselectedLabels: true,
        selectedItemColor: const Color(0xFF6340AD),
        selectedFontSize: 13,
        unselectedFontSize: 13,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(BNavbarIcons.home, height: 29, width: 29, color: _selectedPage == 0 ? const Color(0xFF6340AD) : null),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(BNavbarIcons.history, height: 29, width: 29, color: _selectedPage == 1 ? const Color(0xFF6340AD) : null),
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(BNavbarIcons.pay, height: 29, width: 29, color: _selectedPage == 2 ? const Color(0xFF6340AD) : null),
            ),
            label: 'Pay',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(BNavbarIcons.withdraw, height: 31.1, width: 32, color: _selectedPage == 3 ? const Color(0xFF6340AD) : null),
            ),
            label: 'Withdraw',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(BNavbarIcons.profile, height: 29, width: 29, color: _selectedPage == 4 ? const Color(0xFF6340AD) : null),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }
}
