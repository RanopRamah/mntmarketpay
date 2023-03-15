import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:mntmarketpay/domain/entities/transaction.dart';

import 'package:mntmarketpay/domain/helper/constant.dart';

import '../entities/admin.dart';
import '../entities/user.dart';

class FetchAdminTransactionListImpl {
  static final _host = Uri.https(Helper.api, '/');

  Future<List<Transaction>> fetchAdminTransaction(String token) async {
    final response = await http.get(
      _host.replace(path: '/api/admin/transaction-simple-list'),
      headers: <String, String> {
        'Authorization': 'Bearer $token'
      }
    );

    if (response.statusCode == 200) {
      List jsonResponse = jsonDecode(response.body);
      return jsonResponse.map((e) => Transaction.fromJson(e)).toList();
    } else {
      throw Exception(response.body);
    }
  }
}