import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sneaker_shop_provider_flutter/models/models.dart';
import 'package:sneaker_shop_provider_flutter/provider/provider.dart';

import 'utils.dart';

// check if sneaker is already in cart
bool isInCart(BuildContext context, Sneaker sneaker, WidgetRef ref) {
  final isInCart = ref.read(cartProvider.notifier).isInCart(sneaker);

  // show snackbar
  if (isInCart) {
    ScaffoldMessenger.of(context).showSnackBar(buildSnackBar(sneaker, true));
  } else {
    ScaffoldMessenger.of(context).showSnackBar(buildSnackBar(sneaker, false));
  }

  return isInCart;
}
