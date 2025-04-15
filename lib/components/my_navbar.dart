import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyNavbar extends StatelessWidget {
  final void Function(int) onTabChange;

  const MyNavbar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        padding: EdgeInsets.all(18),
        color: Colors.grey.shade500,
        activeColor: Colors.grey.shade900,
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 20,
        gap: 5,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Shop',
          ),
          GButton(
            icon: Icons.shopping_cart,
            text: 'Cart',
          ),
        ],
        onTabChange: (index) => onTabChange(index),
      ),
    );
  }
}
