import 'package:flutter/material.dart';
import 'package:sneaker_shop_provider_flutter/models/models.dart';

class CartProvider extends ChangeNotifier {
  // sneaker list
  final _sneakers = <Sneaker>[
    Sneaker(
      name: 'Nike Shox R4',
      price: '150',
      image: 'images/shox.jpg',
      type: 'Women\'s Shoes',
    ),
    Sneaker(
      name: 'Nike Air Max 270',
      price: '128.97',
      image: 'images/air_max.jpg',
      type: 'Men\'s Shoes',
    ),
    Sneaker(
      name: 'Nike Air More Uptempo Low',
      price: '160',
      image: 'images/air_more.jpg',
      type: 'Men\'s Shoes',
    ),
    Sneaker(
      name: 'Ja 2',
      price: '84.97',
      image: 'images/ja.jpg',
      type: 'Basketball Shoes',
    ),
  ];

  // cart list
  final _cart = <Sneaker>[];

  // getters
  List<Sneaker> get sneakers => _sneakers;
  List<Sneaker> get cart => _cart;

  // add to cart
  void addToCart(Sneaker sneaker) {
    _cart.add(sneaker);
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(Sneaker sneaker) {
    _cart.remove(sneaker);
    notifyListeners();
  }
}
