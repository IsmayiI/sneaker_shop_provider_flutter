import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.85,
      child: Image.asset(
        'images/logo.png',
        width: 300,
      ),
    );
  }
}
