import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // search bar
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
            child: MySearchBar(),
          ),

          // hot picks
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: MyLabel(),
          ),

          SizedBox(height: 14),

          // sneaker list
          SizedBox(
            height: 500,
            child: SneakerList(),
          ),
        ],
      ),
    );
  }
}
