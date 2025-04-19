import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop_provider_flutter/provider/provider.dart';

import 'widgets/widgets.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartProvider>().cart;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.separated(
        itemCount: cart.length,

        // sneaker tiles
        itemBuilder: (BuildContext context, int index) {
          final sneaker = cart[index];
          return SneakerTile(sneaker);
        },

        // gap between sneaker tiles
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 20);
        },
      ),
    );
  }
}
