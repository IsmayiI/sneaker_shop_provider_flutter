import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      enabled: false,

      // trailing
      trailing: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: Colors.grey.shade500,
          ),
        ),
        // right padding
        const SizedBox(width: 10)
      ],

      // hint
      hintText: 'Search',
      hintStyle: WidgetStatePropertyAll(
        TextStyle(color: Colors.grey.shade500),
      ),

      // text
      textStyle: WidgetStatePropertyAll(
        TextStyle(color: Colors.grey.shade900),
      ),

      // radius
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),

      // color
      backgroundColor: const WidgetStatePropertyAll(Colors.white70),
      shadowColor: const WidgetStatePropertyAll(Colors.transparent),
    );
  }
}
