import 'package:flutter/material.dart';
import 'package:sneaker_shop_provider_flutter/models/models.dart';

SnackBar buildSnackBar(Sneaker sneaker, bool isInCart) {
  final text = isInCart ? 'already in the cart' : 'added to cart';

  return SnackBar(
    margin: const EdgeInsets.symmetric(horizontal: 20),
    content: Column(
      children: [
        _SneakerName(sneaker.name),
        Text(
          text,
          style: TextStyle(
            color: Colors.grey.shade900,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    ),
    elevation: 0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    duration: const Duration(seconds: 1),
    backgroundColor: Colors.white70,
    behavior: SnackBarBehavior.floating,
  );
}

class _SneakerName extends StatelessWidget {
  final String name;

  const _SneakerName(this.name);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
        color: Colors.grey.shade900,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
