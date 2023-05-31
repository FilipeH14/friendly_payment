import 'package:friendly_payment/app/core/providers/base_module_provider.dart';
import 'package:friendly_payment/app/modules/home/home_controller.dart';
import 'package:friendly_payment/app/modules/home/home_page.dart';
import 'package:provider/provider.dart';

class HomeModule extends BaseModuleProvider {
  HomeModule()
      : super(
          bindings: [
            ChangeNotifierProvider(create: (_) => HomeController()),
          ],
          routers: {
            '/home': (context) => const HomePage(),
          },
        );
}
