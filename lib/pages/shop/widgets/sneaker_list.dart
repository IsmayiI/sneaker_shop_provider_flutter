import 'package:flutter/material.dart';

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
        return SneakerCard();
      },

      // gap between sneaker cards
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(width: 20);
      },
    );
  }
}
