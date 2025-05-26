import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sneaker_shop_provider_flutter/models/models.dart';
import 'package:sneaker_shop_provider_flutter/provider/provider.dart';

import 'utils.dart';

// add sneaker to cart
void addToCart(BuildContext context, Sneaker sneaker, WidgetRef ref) {
  // check if sneaker is already in cart
  if (isInCart(context, sneaker, ref)) return;

  // add sneaker to cart
  ref.read(cartProvider.notifier).addToCart(sneaker);
}
