import 'package:flutter/material.dart';
import 'package:friendly_payment/app/app_page.dart';
import 'package:friendly_payment/app/core/database/sqlite_connection_factory.dart';
import 'package:friendly_payment/app/core/network/base_rest_user.dart';
import 'package:friendly_payment/app/repositories/auth/auth_repository.dart';
import 'package:friendly_payment/app/repositories/auth/auth_repository_impl.dart';
import 'package:friendly_payment/app/services/auth/auth_service.dart';
import 'package:friendly_payment/app/services/auth/auth_service_impl.dart';
import 'package:provider/provider.dart';

class AppModule extends StatelessWidget {
  const AppModule({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => SqliteConnectionFactory()),
        Provider(create: (_) => BaseRestUser()),
        Provider<AuthRepository>(
            create: (_) => AuthRepositoryImpl(request: context.read())),
        Provider<AuthService>(
            create: (_) => AuthServiceImpl(authRepository: context.read())),
      ],
      child: const AppPage(),
    );
  }
}
