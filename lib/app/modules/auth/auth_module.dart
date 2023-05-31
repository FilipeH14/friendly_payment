import 'package:friendly_payment/app/modules/auth/login/login_controller.dart';
import 'package:friendly_payment/app/modules/auth/register/register_controller.dart';
import 'package:friendly_payment/app/modules/auth/register/register_page.dart';
import 'package:provider/provider.dart';

import 'package:friendly_payment/app/core/providers/base_module_provider.dart';
import 'package:friendly_payment/app/modules/auth/login/login_page.dart';

class AuthModule extends BaseModuleProvider {
  AuthModule()
      : super(
          bindings: [
            ChangeNotifierProvider(create: (_) => LoginController()),
            ChangeNotifierProvider(create: (_) => RegisterController()),
          ],
          routers: {
            '/login': (context) => const LoginPage(),
            '/register': (context) => const RegisterPage(),
          },
        );
}
