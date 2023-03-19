import 'package:flutter/material.dart';
import 'package:mntmarketpay/common/constant.dart';
import 'package:mntmarketpay/pages/merchant/main-pages/merchant_history_page.dart';
import 'package:mntmarketpay/pages/merchant/main-pages/merchant_home_page.dart';
import 'package:mntmarketpay/pages/merchant/main-pages/merchant_profile_page.dart';
import 'package:mntmarketpay/pages/merchant/main-pages/merchant_withdraw.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SellerNavbar extends StatefulWidget {
  const SellerNavbar({Key? key}) : super(key: key);

  @override
  State<SellerNavbar> createState() => _SellerNavbarState();
}

class _SellerNavbarState extends State<SellerNavbar> {
  late SharedPreferences _prefs;
  String? bearer;
  String? name;
  String? phone;
  int _selectedPage = 0;

  late final List<Widget> _pages = <Widget> [
    MerchantHomePage(bearer!, name!, phone!),
    MerchantHistoryPage(bearer!, name!),
    MerchantWithdrawPage(bearer!, name!, phone!),
    MerchantProfilePage(bearer!, name!, phone!),
  ];

  Future<void> setValue() async {
    _prefs = await SharedPreferences.getInstance();
    setState(() {
      bearer = _prefs.getString('token') ?? 'bearer';
      name = _prefs.getString('nama');
      phone = _prefs.getString('no_hp');
    });
  }

  @override
  void initState() {
    setValue();
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
              child: Image.asset(BNavbarIcons.withdraw, height: 31.1, width: 32, color: _selectedPage == 2 ? const Color(0xFF6340AD) : null),
            ),
            label: 'Withdraw',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(BNavbarIcons.profile, height: 29, width: 29, color: _selectedPage == 3 ? const Color(0xFF6340AD) : null),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) async {
    setState(() {
      _selectedPage = index;
    });
    await setValue();
  }
}
