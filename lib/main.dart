import 'package:flutter/material.dart';
import 'package:mvvm_sample_app/di/service_locator.dart';
import 'package:mvvm_sample_app/view/coinlist_screen.dart';

void main() {
  initServiceLocator();
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CoinListScreen(),
    );
  }
}
