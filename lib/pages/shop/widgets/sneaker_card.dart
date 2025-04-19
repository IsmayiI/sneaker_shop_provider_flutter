import 'package:flutter/material.dart';
import 'package:sneaker_shop_provider_flutter/models/models.dart';
import 'package:sneaker_shop_provider_flutter/pages/shop/utils/utils.dart';

class SneakerCard extends StatelessWidget {
  final Sneaker sneaker;

  const SneakerCard(this.sneaker, {super.key});

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
                  onPressed: () => addToCart(context, sneaker),
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
