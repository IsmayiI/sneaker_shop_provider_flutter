import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:sneaker_shop_provider_flutter/models/models.dart';
import 'package:sneaker_shop_provider_flutter/pages/shop/utils/utils.dart';
import 'package:sneaker_shop_provider_flutter/provider/provider.dart';

class SneakerCard extends StatelessWidget {
  final Sneaker sneaker;

  const SneakerCard(this.sneaker, {super.key});

  void addToCart(BuildContext context) {
    // check if sneaker is already in cart
    if (isInCart(context)) return;

    // add sneaker to cart
    context.read<CartProvider>().addToCart(sneaker);
  }

  bool isInCart(BuildContext context) {
    final isInCart = context.read<CartProvider>().isInCart(sneaker);

    // show snackbar
    if (isInCart) {
      ScaffoldMessenger.of(context).showSnackBar(buildSnackBar(sneaker, true));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(buildSnackBar(sneaker, false));
    }

    return isInCart;
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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // name & price
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20, bottom: 10, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        sneaker.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
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
