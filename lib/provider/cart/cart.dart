// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:sneaker_shop_provider_flutter/models/models.dart';

class Cart extends Equatable {
  final List<Sneaker> cart;
  const Cart({
    required this.cart,
  });

  Cart copyWith({
    List<Sneaker>? cart,
  }) {
    return Cart(
      cart: cart ?? this.cart,
    );
  }

  @override
  List<Object> get props => [cart];
}
