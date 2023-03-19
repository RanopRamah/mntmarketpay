import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:mntmarketpay/domain/entities/topup.dart';
import 'package:mntmarketpay/domain/entities/user.dart';
import 'package:mntmarketpay/domain/helper/constant.dart';

class BuyerTopupList {
  static final _host = Uri.https(Helper.api, '/');

  Future<List<TopUp>>BuyerTopUp(String bearer) async {
    try {
      final response = await http.get(
        _host.replace(path: '/api/buyer/topup-list/'),
        headers: <String, String> {
          'Authorization' : 'Bearer $bearer',
        },
      );
      if (response.statusCode == 200) {
        List o = jsonDecode(response.body);
        return o.map((e) => TopUp.fromJson(e)).toList();
      }
    } on TimeoutException {
      throw TimeoutException('');
    }
    throw Exception();
  }
}