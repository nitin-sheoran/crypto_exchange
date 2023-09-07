import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:crypto_exchange/crypto/model/crypto_coin_info.dart';

class MarketApiService {
  static Future<List<CryptoCoinInfo>> getMaretApiService() async {
    http.Response response = await http.get(
      Uri.parse('https://api.coingecko.com/api/v3/coins/markets?vs_currency=inr&order=market_cap_desc&per_page=99&page=1&sparkline=false&locale=en'),
    );

    if (response.statusCode == 200) {
      List<dynamic> mapList = jsonDecode(response.body);
      List<CryptoCoinInfo> cryptoList = [];

      for (int i = 0; i < mapList.length; i++) {
        CryptoCoinInfo cryptoCoinInfo = CryptoCoinInfo.fromJson(mapList[i]);
        cryptoList.add(cryptoCoinInfo);
        Fluttertoast.showToast(
            msg: 'Online',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0,
        );
      }
      return cryptoList;
    } else {
      throw 'Something Went Wrong';
    }
  }
}
