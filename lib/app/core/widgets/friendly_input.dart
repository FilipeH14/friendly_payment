import 'package:flutter/material.dart';

class FriendlyInput extends StatelessWidget {
  final String label;

  const FriendlyInput({
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
      ),
    );
  }
}
