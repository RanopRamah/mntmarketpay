import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:mntmarketpay/domain/entities/topup.dart';
import 'package:mntmarketpay/domain/entities/transaction.dart';
import 'package:mntmarketpay/domain/entities/user.dart';
import 'package:mntmarketpay/domain/helper/constant.dart';

class BuyerTransactionsList {
  static final _host = Uri.https(Helper.api, '/');

  Future<List<Transaction>> BuyerTransaction(String bearer) async {
    try {
      final response = await http.get(
        _host.replace(path: '/api/buyer/transaction-list'),
        headers: <String, String> {
          'Authorization' : 'Bearer $bearer',
        },
      );
      if (response.statusCode == 200) {
        final List o = jsonDecode(response.body);
        print(response.body);
        return o.map((e) => Transaction.fromJson(e)).toList();
      }
    } on TimeoutException {

      throw TimeoutException('');
    }
    throw Exception();

  }
}
