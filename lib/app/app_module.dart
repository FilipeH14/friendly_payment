import 'package:flutter/material.dart';
import 'package:friendly_payment/app/app_page.dart';
import 'package:friendly_payment/app/core/database/sqlite_connection_factory.dart';
import 'package:provider/provider.dart';

class AppModule extends StatelessWidget {
  const AppModule({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => SqliteConnectionFactory(),
        ),
      ],
      child: const AppPage(),
    );
  }
}
