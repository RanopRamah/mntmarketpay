import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:mntmarketpay/domain/entities/topup.dart';

import 'package:mntmarketpay/domain/helper/constant.dart';

import '../../entities/admin.dart';
import '../../entities/user.dart';

class FetchTopupListImpl {
  static final _host = Uri.https(Helper.api, '/');

  Future<List<TopUp>> fetchTopup() async {
    final response = await http.get(
      _host.replace(path: '/admin/topup-list'),
    );

    if (response.statusCode == 200) {
      List jsonResponse = jsonDecode(response.body);
      return jsonResponse.map((e) => TopUp.fromJson(e)).toList();
    } else {
      throw Exception(response.body);
    }
  }
}