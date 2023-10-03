import 'package:mvvm_sample_app/model/crypto.dart';

abstract class NetworkApi {
  Future<List<Crypto>> getAllCrypto();
}
