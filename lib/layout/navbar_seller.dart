import 'package:flutter/material.dart';
import 'package:mntmarketpay/common/constant.dart';
import 'package:mntmarketpay/pages/merchant/merchant_history_page.dart';
import 'package:mntmarketpay/pages/merchant/merchant_home_page.dart';
import 'package:mntmarketpay/pages/merchant/merchant_profile_page.dart';
import 'package:mntmarketpay/pages/merchant/merchant_withdraw.dart';

class SellerNavbar extends StatefulWidget {
  const SellerNavbar({Key? key}) : super(key: key);

  @override
  State<SellerNavbar> createState() => _SellerNavbarState();
}

class _SellerNavbarState extends State<SellerNavbar> {
  int _selectedPage = 0;

  static const List<Widget> _pages = <Widget> [
    MerchantHomePage(),
    MerchantHistoryPage(),
    MerchantWithdrawPage(),
    MerchantProfilePage(),
  ];

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
              child: Image.asset(BNavbarIcons.withdraw, height: 38, width: 38, color: _selectedPage == 3 ? const Color(0xFF6340AD) : null),
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
