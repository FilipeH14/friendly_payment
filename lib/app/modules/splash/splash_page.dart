import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Splash Page')),
      body: Center(
        child: TextButton(
          child: const Text('/login'),
          onPressed: () => Navigator.of(context).pushNamed('/login'),
        ),
      ),
    );
  }
}
