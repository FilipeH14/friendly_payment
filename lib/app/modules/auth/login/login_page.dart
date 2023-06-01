import 'package:flutter/material.dart';
import 'package:friendly_payment/app/core/widgets/friendly_button.dart';
import 'package:friendly_payment/app/core/widgets/friendly_input.dart';
import 'package:friendly_payment/app/modules/auth/login/controller/login_controller.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  late final LoginController controller;

  @override
  void initState() {
    super.initState();
    controller = context.read<LoginController>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constrains) => SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constrains.maxHeight,
              minWidth: constrains.maxWidth,
            ),
            child: IntrinsicHeight(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const FriendlyInput(label: 'E-mail'),
                        const SizedBox(height: 20),
                        const FriendlyInput(label: 'Senha'),
                        const SizedBox(height: 20),
                        const FriendlyButton(text: 'Entrar'),
                        const SizedBox(height: 20),
                        GestureDetector(
                          child: const Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Não é cadastrado?  ',
                                ),
                                TextSpan(
                                  text: 'Cadastre-se aqui',
                                ),
                              ],
                            ),
                          ),
                          onTap: () =>
                              Navigator.of(context).pushNamed('/register'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
