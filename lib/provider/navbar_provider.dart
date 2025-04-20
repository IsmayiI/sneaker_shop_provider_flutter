import 'package:flutter/material.dart';
import 'package:sneaker_shop_provider_flutter/pages/pages.dart';

class NavbarProvider with ChangeNotifier {
  final pages = const [
    ShopPage(),
    CartPage(),
  ];

  int selectedIndex = 0;

  // current page
  Widget get page => pages[selectedIndex];

  // change page
  void onTabChange(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
