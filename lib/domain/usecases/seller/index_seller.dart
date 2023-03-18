import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:mntmarketpay/domain/entities/seller.dart';
import 'package:mntmarketpay/domain/helper/constant.dart';

class IndexSeller {
  static final _host = Uri.https(Helper.api, '/');

  Future<Seller> getSeller(String bearer) async {
    try {
      final response = await http.get(
        _host.replace(path: '/api/seller/'),
        headers: <String, String> {
          'Authorization' : 'Bearer $bearer',
        }
      );
      if (response.statusCode == 200) {
        return Seller.fromJson(jsonDecode(response.body));
      }
    } on TimeoutException {
      throw TimeoutException('');
    }
    throw Exception();
  }
}