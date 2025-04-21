import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop_provider_flutter/models/models.dart';
import 'package:sneaker_shop_provider_flutter/provider/provider.dart';

class SneakerTile extends StatelessWidget {
  final Sneaker sneaker;
  const SneakerTile(this.sneaker, {super.key});

  // delete sneaker from cart
  void onDelete(BuildContext context) {
    context.read<CartProvider>().removeFromCart(sneaker);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // image
      leading: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Image.asset(sneaker.image),
      ),

      // name
      title: Text(sneaker.name),

      // price
      subtitle: Text('\$${sneaker.price}'),

      // delete
      trailing: IconButton(
        onPressed: () => onDelete(context),
        icon: const Icon(Icons.delete, color: Colors.grey),
      ),
    );
  }
}
