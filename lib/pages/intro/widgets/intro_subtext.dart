import 'package:flutter/material.dart';

class IntroSubtext extends StatelessWidget {
  const IntroSubtext({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Brand new sneakers and custom kicks made with premium quality',
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: Colors.grey.shade600,
      ),
      textAlign: TextAlign.center,
    );
  }
}
