import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Hot Sneakers'),

        // sneaker list
        SizedBox(
          height: 500,
          child: SneakerList(),
        ),
      ],
    );
  }
}
