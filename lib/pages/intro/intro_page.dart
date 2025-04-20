import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        // padding horizontal
        padding: EdgeInsets.symmetric(horizontal: 25),

        child: Column(
          // vertical center & horizontal center (default)
          mainAxisAlignment: MainAxisAlignment.center,

          // content
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
    );
  }
}
