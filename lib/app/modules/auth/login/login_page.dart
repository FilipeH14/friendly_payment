import 'package:flutter/material.dart';
import 'package:friendly_payment/app/core/widgets/friendly_button.dart';
import 'package:friendly_payment/app/core/widgets/friendly_input.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                      children: const [
                        FriendlyInput(label: 'E-mail'),
                        SizedBox(height: 20),
                        FriendlyInput(label: 'Senha'),
                        SizedBox(height: 20),
                        FriendlyButton(),
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
