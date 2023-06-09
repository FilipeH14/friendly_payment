import 'package:friendly_payment/app/modules/auth/login/controller/login_controller.dart';
import 'package:friendly_payment/app/modules/auth/register/controller/register_controller.dart';
import 'package:friendly_payment/app/modules/auth/register/register_page.dart';
import 'package:provider/provider.dart';

import 'package:friendly_payment/app/core/providers/base_module_provider.dart';
import 'package:friendly_payment/app/modules/auth/login/login_page.dart';

class AuthModule extends BaseModuleProvider {
  AuthModule()
      : super(
          bindings: [
            Provider(create: (context) => LoginController(authService: context.read())),
            ChangeNotifierProvider(create: (_) => RegisterController()),
          ],
          routers: {
            '/login': (context) => const LoginPage(),
            '/register': (context) => const RegisterPage(),
          },
        );
}
