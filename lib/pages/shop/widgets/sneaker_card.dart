import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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

      // content
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // image
          _SneakerImage(sneaker.image),

          // type
          _SneakerType(sneaker.type),

          // info
          Row(
            // button to bottom
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // name & price
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    bottom: 10,
                    right: 20,
                  ),

                  // content
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // name
                      _SneakerName(sneaker.name),

                      // price
                      _SneakerPrice(sneaker.price),
                    ],
                  ),
                ),
              ),

              //  + add button
              _AddButton(sneaker),
            ],
          ),
        ],
      ),
    );
  }
}

class _AddButton extends ConsumerWidget {
  final Sneaker sneaker;

  const _AddButton(this.sneaker);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      onPressed: () => addToCart(context, sneaker, ref),
      icon: const Icon(Icons.add),

      // style
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(50, 50),
        backgroundColor: Colors.grey.shade900,
        foregroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
          ),
        ),
      ),
    );
  }
}

class _SneakerPrice extends StatelessWidget {
  final String price;

  const _SneakerPrice(this.price);

  @override
  Widget build(BuildContext context) {
    return Text(
      '\$$price',
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: Colors.grey.shade600,
      ),
    );
  }
}

class _SneakerName extends StatelessWidget {
  final String name;

  const _SneakerName(this.name);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
    );
  }
}

class _SneakerType extends StatelessWidget {
  final String type;

  const _SneakerType(this.type);

  @override
  Widget build(BuildContext context) {
    return Text(
      type,
      style: TextStyle(
        color: Colors.grey.shade600,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class _SneakerImage extends StatelessWidget {
  final String image;

  const _SneakerImage(this.image);

  @override
  Widget build(BuildContext context) {
    return Image.asset(image);
  }
}
