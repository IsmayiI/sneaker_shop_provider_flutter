import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sneaker_shop_provider_flutter/models/models.dart';
import 'package:sneaker_shop_provider_flutter/provider/provider.dart';

class SneakerTile extends ConsumerWidget {
  final Sneaker sneaker;
  const SneakerTile(this.sneaker, {super.key});

  // delete sneaker from cart
  void onDelete(BuildContext context, WidgetRef ref) {
    ref.read(cartProvider.notifier).removeFromCart(sneaker);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
        onPressed: () => onDelete(context, ref),
        icon: const Icon(Icons.delete, color: Colors.grey),
      ),
    );
  }
}
