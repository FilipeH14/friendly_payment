import 'package:flutter/material.dart';

class FriendlyButton extends StatelessWidget {
  const FriendlyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: const Text('Entrar'),
      onPressed: () {},
    );
  }
}
