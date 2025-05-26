import 'package:flutter/material.dart';
import 'package:sneaker_shop_provider_flutter/data/sneakers.dart';

import 'widgets.dart';

class SneakerList extends StatelessWidget {
  const SneakerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: sneakers.length,
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 20),

      // sneaker cards
      itemBuilder: (BuildContext context, int index) {
        final sneaker = sneakers[index];
        return SneakerCard(sneaker);
      },

      // gap between sneaker cards
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(width: 20);
      },
    );
  }
}
