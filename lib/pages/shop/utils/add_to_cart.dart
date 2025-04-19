import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop_provider_flutter/models/models.dart';
import 'package:sneaker_shop_provider_flutter/provider/provider.dart';

import 'utils.dart';

// add sneaker to cart
void addToCart(BuildContext context, Sneaker sneaker) {
  // check if sneaker is already in cart
  if (isInCart(context, sneaker)) return;

  // add sneaker to cart
  context.read<CartProvider>().addToCart(sneaker);
}
