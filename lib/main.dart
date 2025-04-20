import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'navigation/navigation.dart';
import 'provider/provider.dart';
import 'theme/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => NavbarProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        routes: Navigation.routes,
        initialRoute: Navigation.initialRoute,
      ),
    );
  }
}
