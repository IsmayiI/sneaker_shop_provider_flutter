import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:sneaker_shop_provider_flutter/models/models.dart';
import 'package:sneaker_shop_provider_flutter/provider/provider.dart';

class SneakerCard extends StatelessWidget {
  final Sneaker sneaker;

  const SneakerCard({
    super.key,
    required this.sneaker,
  });

  void addToCart(BuildContext context) {
    context.read<CartProvider>().addToCart(sneaker);

    // show snackbar
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        margin: EdgeInsets.symmetric(horizontal: 20),
        content: Text(
          '${sneaker.name} added to cart',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.grey.shade900,
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        duration: Duration(seconds: 1),
        backgroundColor: Colors.white70,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(12),
      ),
      clipBehavior: Clip.hardEdge,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // sneaker image
          Image.asset(
            sneaker.image,
          ),

          // type
          Text(
            sneaker.type,
            style: TextStyle(
                color: Colors.grey.shade600, fontWeight: FontWeight.w500),
          ),

          // info
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // name & price
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 10),
                child: Column(
                  children: [
                    Text(
                      sneaker.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      '\$${sneaker.price}',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),

              //  button
              SizedBox(
                width: 50,
                height: 50,
                child: IconButton(
                  onPressed: () => addToCart(context),
                  icon: Icon(Icons.add),
                  style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                      ),
                    ),
                    backgroundColor: Colors.grey.shade900,
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
