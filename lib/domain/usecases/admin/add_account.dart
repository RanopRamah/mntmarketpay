import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mntmarketpay/domain/helper/constant.dart';
import 'package:http/http.dart' as http;
import 'package:mntmarketpay/layout/navbar_admin.dart';

class AddAccountImpl {
  static final _host = Uri.https(Helper.api, '/');

  Future<void> addAccount(BuildContext ctx, bearer, phone, name, pin, type) async {
    try {
      final response = await http.post(
        _host.replace(path: '/api/admin/user-add'),
        headers: <String, String> {
          'Authorization' : 'Bearer $bearer',
        },
        body: <String, String> {
          'no_hp' : phone.toString(),
          'nama' : name.toString(),
          'pin' : pin.toString(),
          'tipe' : type.toString(),
        }
      );
      if (response.statusCode == 200) {
        Navigator.pushReplacement(ctx, MaterialPageRoute(builder: (c) => AdminNavBar()));
      }
    } on TimeoutException {
      throw TimeoutException('');
    }
    throw Exception();
  }
}