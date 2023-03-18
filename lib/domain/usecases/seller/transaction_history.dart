import 'dart:async';
import 'dart:convert';

import 'package:mntmarketpay/domain/entities/transaction.dart';
import 'package:mntmarketpay/domain/helper/constant.dart';
import 'package:http/http.dart' as http;

class SellerTransactions {
  static final _host = Uri.https(Helper.api, '/');

  Future<List<Transaction>> fetchTransaction(String bearer) async {
    try {
      final response = await http.get(
        _host.replace(path: '/api/seller/transaction-list'),
        headers: <String, String> {
          'Authorization' : 'Bearer $bearer',
        }
      );
      if (response.statusCode == 200) {
        final List o = jsonDecode(response.body);
        return o.map((e) => Transaction.fromJson(e)).toList();
      }
    } on TimeoutException {
      throw TimeoutException('');
    }
    throw Exception();
  }
}