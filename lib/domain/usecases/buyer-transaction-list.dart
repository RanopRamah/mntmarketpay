import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:mntmarketpay/domain/entities/transaction.dart';

import 'package:mntmarketpay/domain/helper/constant.dart';

import '../entities/admin.dart';
import '../entities/user.dart';

class FetchBuyerTransactionListImpl {
  static final _host = Uri.https(Helper.api, '/');

  Future<List<Transaction>> fetchBuyerTransaction() async {
    final response = await http.get(
      _host.replace(path: '/buyer/transaction-list'),
    );

    if (response.statusCode == 200) {
      List jsonResponse = jsonDecode(response.body);
      return jsonResponse.map((e) => Transaction.fromJson(e)).toList();
    } else {
      throw Exception(response.body);
    }
  }
}