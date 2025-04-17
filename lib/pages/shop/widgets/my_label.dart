import 'package:flutter/material.dart';

class MyLabel extends StatelessWidget {
  const MyLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hot Picks 🔥',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
