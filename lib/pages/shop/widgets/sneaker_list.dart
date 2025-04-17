import 'package:flutter/material.dart';
import 'package:sneaker_shop_provider_flutter/models/models.dart';

import 'widgets.dart';

class SneakerList extends StatelessWidget {
  const SneakerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 4,
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 20),

      // sneaker cards
      itemBuilder: (BuildContext context, int index) {
        final sneaker = Sneaker(
          name: 'Ja 2',
          price: '84.97',
          image: 'images/ja.jpg',
          type: 'Basketball Shoes',
        );
        return SneakerCard(sneaker: sneaker);
      },

      // gap between sneaker cards
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(width: 20);
      },
    );
  }
}
