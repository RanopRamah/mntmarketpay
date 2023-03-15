import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:mntmarketpay/domain/entities/transaction.dart';

import 'package:mntmarketpay/domain/helper/constant.dart';

import '../../entities/admin.dart';

class FetchAdminImpl {
  static final _host = Uri.https(Helper.api, '/');

  Future<Admin> fetchAdmin(String bearer) async {
    try {
      final response = await http.get(
        _host.replace(path: '/api/admin/'),
        headers: <String, String> {
          'Authorization' : 'Bearer $bearer',
        },
      );
      if (response.statusCode == 200) {
        return Admin.fromJson(jsonDecode(response.body));
      }
    } on TimeoutException {
      throw TimeoutException('');
    }
    throw Exception();
  }
  Future<List<Transaction>> fetchTransaction(String bearer) async {
    try {
      final response = await http.get(
        _host.replace(path: '/api/admin/transaction-simple-list'),
        headers: <String, String> {
          'Authorization' : 'Bearer $bearer',
        }
      );
      if (response.statusCode == 200) {
        List o = jsonDecode(response.body);
        return o.map((e) => Transaction.fromJson(e)).toList();
      }
    } on TimeoutException {
      throw TimeoutException('');
    }
    throw Exception();
  }
}