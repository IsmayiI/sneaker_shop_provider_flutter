import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo
                Logo(),
                SizedBox(height: 85),

                // text
                IntroText(),
                SizedBox(height: 30),

                // subtext
                IntroSubtext(),
                SizedBox(height: 30),

                // button
                IntroButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
