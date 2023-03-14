import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:mntmarketpay/domain/entities/user.dart';
import 'package:mntmarketpay/domain/helper/constant.dart';

class AuthenticationImpl {
  static final _host = Uri.https(Helper.api, '/');

  Future<Users> authenticate(String no) async {
    try {
      final response = await http.post(
        _host.replace(path: '/auth'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
        body: jsonEncode(<String, String>{
          'no_hp': no,
        }),
      );
    } on TimeoutException {
      throw TimeoutException('');
    }
    throw Exception();
  }
}