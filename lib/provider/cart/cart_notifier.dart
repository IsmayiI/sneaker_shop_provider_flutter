import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sneaker_shop_provider_flutter/models/models.dart';

import 'cart.dart';

class CartNotifier extends StateNotifier<Cart> {
  CartNotifier() : super(const Cart(cart: []));

  // add to cart
  void addToCart(Sneaker sneaker) {
    state = state.copyWith(
      cart: [...state.cart, sneaker],
    );
  }

  // remove from cart
  void removeFromCart(Sneaker sneaker) {
    state = state.copyWith(
      cart: state.cart.where((item) => item != sneaker).toList(),
    );
  }

  // check if sneaker is in cart
  bool isInCart(Sneaker sneaker) {
    return state.cart.contains(sneaker);
  }
}
