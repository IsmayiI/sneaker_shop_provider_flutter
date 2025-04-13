import 'package:flutter/material.dart';
import 'package:sneaker_shop_provider_flutter/pages/pages.dart';

import 'widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // tabs logic
  int selectedIndex = 0;
  void onTabChange(int index) => setState(() => selectedIndex = index);

  // pages logic
  final pages = const <Widget>[
    ShopPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyNavbar(onTabChange: onTabChange),
      body: pages[selectedIndex],
    );
  }
}
