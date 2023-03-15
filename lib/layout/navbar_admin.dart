import 'package:flutter/material.dart';
import 'package:mntmarketpay/common/constant.dart';
import 'package:mntmarketpay/pages/admin/main-page/admin_home_page.dart';
import 'package:mntmarketpay/pages/admin/main-page/admin_scan_page.dart';
import 'package:mntmarketpay/pages/admin/main-page/admin_topup_page.dart';
import 'package:mntmarketpay/pages/admin/main-page/admin_transaction_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../pages/admin/main-page/admin_account.dart';


class AdminNavBar extends StatefulWidget {
  const AdminNavBar({Key? key}) : super(key: key);

  @override
  State<AdminNavBar> createState() => _AdminNavBarState();
}

class _AdminNavBarState extends State<AdminNavBar> {
  late SharedPreferences _prefs;
  String? bearer;
  int _selectedPage = 0;

  late final List<Widget> _pages = <Widget> [
    const AdminHomePage(),
    const AdminTransactionPage(),
    const AdminScanPage(),
    const AdminTopupPage(),
    AdminAccountPage(bearer!),
  ];
  Future<void> setToken() async {
    _prefs = await SharedPreferences.getInstance();
    setState(() {
      bearer = _prefs.getString('token') ?? 'bearer';
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
              child: Image.asset(BNavbarIcons.transaction, height: 29, width: 29, color: _selectedPage == 1 ? const Color(0xFF6340AD) : null),
            ),
            label: 'Transaction',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(BNavbarIcons.pay, height: 29, width: 29, color: _selectedPage == 2 ? const Color(0xFF6340AD) : null),
            ),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(BNavbarIcons.topup, height: 30, width: 29, color: _selectedPage == 3 ? const Color(0xFF6340AD) : null),
            ),
            label: 'Topup',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(BNavbarIcons.profile, height: 29, width: 29, color: _selectedPage == 4 ? const Color(0xFF6340AD) : null),
            ),
            label: 'Accounts',
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) async {
    setState(() {
      _selectedPage = index;
    });
    await setToken();
  }
}
