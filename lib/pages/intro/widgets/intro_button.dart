import 'package:flutter/material.dart';

class IntroButton extends StatelessWidget {
  const IntroButton({super.key});

  void onPressed(BuildContext context) {
    Navigator.pushNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // on press
      onPressed: () => onPressed(context),

      // button style
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 70),
        foregroundColor: Colors.grey.shade200,
        backgroundColor: Colors.grey.shade900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),

      // text
      child: const Text(
        'Shop Now',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}
