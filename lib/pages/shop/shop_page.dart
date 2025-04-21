import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // search bar
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
            child: MySearchBar(),
          ),

          // hot picks
          Padding(
            padding: EdgeInsets.only(left: 20, bottom: 14),
            child: MyLabel(),
          ),

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
