import 'package:flutter/material.dart';

class IntroButton extends StatelessWidget {
  const IntroButton({super.key});

  void onPressed(BuildContext context) {
    Navigator.pushNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 70,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () => onPressed(context),
        child: Text(
          'Shop Now',
          style: TextStyle(
            color: Colors.grey.shade200,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
