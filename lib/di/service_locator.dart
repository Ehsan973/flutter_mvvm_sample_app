import 'package:get_it/get_it.dart';
import 'package:mvvm_sample_app/service/api/network_api.dart';
import 'package:mvvm_sample_app/service/api/web_api_fake.dart';
import 'package:mvvm_sample_app/service/api/web_api_implementation.dart';
import 'package:mvvm_sample_app/view_model/coinlist_viewmodel.dart';

void initServiceLocator() {
  GetIt.I.registerSingleton<NetworkApi>(WebApi());
  GetIt.I.registerFactory<CoinListViewModel>(() => CoinListViewModel());
}
