import 'package:flutter/material.dart';
import 'package:friendly_payment/app/modules/splash/splash_page.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Friendly Paymment',
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
