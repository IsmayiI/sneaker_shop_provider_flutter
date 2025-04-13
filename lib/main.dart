import 'package:flutter/material.dart';

import 'pages/pages.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade300,
      ),
      routes: {
        '/': (_) => IntroPage(),
        '/home': (_) => HomePage(),
      },
      initialRoute: '/home',
    );
  }
}
