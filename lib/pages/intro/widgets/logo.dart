import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'images/logo.png',
      width: 300,
      color: Colors.grey.shade900,
    );
  }
}
