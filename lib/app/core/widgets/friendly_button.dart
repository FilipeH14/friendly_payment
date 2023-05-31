import 'package:flutter/material.dart';

class FriendlyButton extends StatelessWidget {
  final String text;

  const FriendlyButton({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(text),
      onPressed: () {},
    );
  }
}
