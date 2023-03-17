import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:mntmarketpay/domain/entities/topup.dart';
import 'package:mntmarketpay/domain/entities/transaction.dart';
import 'package:mntmarketpay/domain/entities/user.dart';
import 'package:mntmarketpay/domain/helper/constant.dart';

import '../../entities/buyer.dart';

class BuyerImpl {
  static final _host = Uri.https(Helper.api, '/');

  Future<Buyer> fetchBuyer(String bearer) async {
    try {
      final response = await http.get(
        _host.replace(path: '/api/buyer'),
        headers: <String, String> {
          'Authorization' : 'Bearer $bearer',
        },
      );
      if (response.statusCode == 200) {
        return Buyer.fromJson(jsonDecode(response.body));
      }
    } on TimeoutException {
      throw TimeoutException('');
    }
    throw Exception();
  }
}