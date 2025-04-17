import 'package:flutter/material.dart';
import 'package:sneaker_shop_provider_flutter/models/models.dart';

class SneakerCard extends StatelessWidget {
  final Sneaker sneaker;

  const SneakerCard({
    super.key,
    required this.sneaker,
  });

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
                  onPressed: () {},
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
