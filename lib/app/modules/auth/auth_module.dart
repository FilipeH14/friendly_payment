import 'package:friendly_payment/app/modules/auth/login/login_controller.dart';
import 'package:provider/provider.dart';

import 'package:friendly_payment/app/core/providers/base_module_provider.dart';
import 'package:friendly_payment/app/modules/auth/login/login_page.dart';

class AuthModule extends BaseModuleProvider {
  AuthModule()
      : super(
          bindings: [
            ChangeNotifierProvider(create: (_) => LoginController()),
          ],
          routers: {
            '/login': (context) => const LoginPage(),
          },
        );
}
