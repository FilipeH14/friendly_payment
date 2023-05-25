import 'package:flutter/material.dart';
import 'package:friendly_payment/app/core/database/sqlite_adm_connection.dart';
import 'package:friendly_payment/app/modules/auth/auth_module.dart';
import 'package:friendly_payment/app/modules/splash/splash_page.dart';

class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  final sqliteAdmConnection = SqliteAdmConnection();

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(sqliteAdmConnection);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.addObserver(sqliteAdmConnection); 
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Friendly Paymment',
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        ...AuthModule().routers,
      },
      home: const SplashPage(),
    );
  }
}
