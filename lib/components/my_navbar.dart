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
      // navbar vertical padding
      padding: const EdgeInsets.symmetric(vertical: 20),

      // navbar
      child: GNav(
        // navbar style
        padding: const EdgeInsets.all(18),
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 20,
        gap: 5,
        color: Colors.grey.shade500,
        activeColor: Colors.grey.shade900,
        tabBackgroundColor: Colors.grey.shade100,

        // navbar tabs
        tabs: const [
          // shop
          GButton(
            icon: Icons.home,
            text: 'Shop',
          ),

          // cart
          GButton(
            icon: Icons.shopping_cart,
            text: 'Cart',
          ),
        ],

        // on tab change
        onTabChange: (index) => onTabChange(index),
      ),
    );
  }
}
