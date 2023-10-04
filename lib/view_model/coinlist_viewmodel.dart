import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mvvm_sample_app/model/crypto.dart';
import 'package:mvvm_sample_app/service/api/network_api.dart';
import 'package:mvvm_sample_app/service/api/web_api_fake.dart';
import 'package:mvvm_sample_app/service/api/web_api_implementation.dart';

class CoinListViewModel extends ChangeNotifier {
  final NetworkApi _webApi = GetIt.I.get<NetworkApi>();

  List<Crypto> cryptoList = [];

  void loadData() async {
    cryptoList = await _webApi.getAllCrypto();
    notifyListeners();
  }
}
