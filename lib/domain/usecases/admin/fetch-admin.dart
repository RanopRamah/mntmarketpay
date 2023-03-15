import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart' as http;

import 'package:mntmarketpay/domain/helper/constant.dart';

import '../../entities/admin.dart';

class FetchAdminImpl {
  static final _host = Uri.https(Helper.api, '/');

  Future<Admin> fetchAdmin() async {

    final response = await http.get(
      _host.replace(path: '/api/admin'),
    );

    if (response.statusCode == 200) {
      return Admin.fromJson(jsonDecode(response.body));
    } else {
      throw Exception(response.body);
    }
  }
}