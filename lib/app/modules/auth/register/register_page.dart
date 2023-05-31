import 'package:flutter/material.dart';
import 'package:friendly_payment/app/core/widgets/friendly_button.dart';
import 'package:friendly_payment/app/core/widgets/friendly_input.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
                        const FriendlyInput(label: 'Nome'),
                        const SizedBox(height: 20),
                        const FriendlyInput(label: 'Cidade'),
                        const SizedBox(height: 20),
                        const FriendlyButton(),
                        const SizedBox(height: 20),
                        GestureDetector(
                          child: const Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Ja é cadastrado?  ',
                                ),
                                TextSpan(
                                  text: 'Entrar aqui',
                                ),
                              ],
                            ),
                          ),
                          onTap: () => Navigator.of(context).pushNamed('/login'),
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
