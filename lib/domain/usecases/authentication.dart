import 'dart:convert';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mntmarketpay/domain/entities/user.dart';
import 'package:mntmarketpay/domain/helper/constant.dart';
import 'package:mntmarketpay/layout/navbar_admin.dart';
import 'package:mntmarketpay/layout/navbar_buyer.dart';
import 'package:mntmarketpay/layout/navbar_seller.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthenticationImpl {
  static final _host = Uri.https(Helper.api, '/');
  late SharedPreferences preferences;
  late SharedPreferences _check;

  /// post phone number to get response
  Future<void> authenticate(String no, BuildContext ctx) async {
    try {
      final response = await http.post(
        _host.replace(path: '/api/auth'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
        body: jsonEncode(<String, String>{
          'no_hp': no,
        }),
      );
      if (response.statusCode == 200) {
        var o = jsonDecode(response.body);
        saveSession(o['id'], o['nama'], o['no_hp'], o['tipe'], o['created_at'], o['updated_at'], o['token'], ctx);
      }
    } on TimeoutException {
      throw TimeoutException('');
    }
    throw Exception();
  }
  void saveSession(id, name, phone, type, cat, uat, token, BuildContext ctx) async {
    preferences = await SharedPreferences.getInstance();
    preferences.setString('id', id.toString());
    preferences.setString('nama', name.toString());
    preferences.setString('no_hp', phone.toString());
    preferences.setString('tipe', type.toString());
    preferences.setString('created_at', cat.toString());
    preferences.setString('updated_at', uat.toString());
    preferences.setString('token', token.toString());
    preferences.setBool('is_login', true);

    if (type == 'B') {
      Navigator.of(ctx).pushAndRemoveUntil(
          MaterialPageRoute(builder: (ctx) => const BuyerNavBar()),
              (route) => false);
    } else if (type == 'S') {
      Navigator.of(ctx).pushAndRemoveUntil(
          MaterialPageRoute(builder: (ctx) => const SellerNavbar()),
              (route) => false);
    } else if (type == 'A') {
      Navigator.of(ctx).pushAndRemoveUntil(
          MaterialPageRoute(builder: (ctx) => const AdminNavBar()),
              (route) => false);
    } else {
      null;
    }
  }

  /// check if user are authenticated
  void checkLogin(BuildContext ctx) async {
    _check = await SharedPreferences.getInstance();
    var isLogin = _check.getBool('is_login');
    var type = _check.getString('tipe');

    if (isLogin != null && isLogin) {
      if (type == 'B') {
        Navigator.of(ctx).pushAndRemoveUntil(
            MaterialPageRoute(builder: (ctx) => const BuyerNavBar()),
                (route) => false);
      } else if (type == 'S') {
        Navigator.of(ctx).pushAndRemoveUntil(
            MaterialPageRoute(builder: (ctx) => const SellerNavbar()),
                (route) => false);
      } else if (type == 'A') {
        Navigator.of(ctx).pushAndRemoveUntil(
            MaterialPageRoute(builder: (ctx) => const AdminNavBar()),
                (route) => false);
      } else {
        null;
      }
    }
  }
}