import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      trailing: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: Colors.grey.shade500,
          ),
        ),
        SizedBox(width: 10)
      ],
      hintStyle: WidgetStatePropertyAll(
        TextStyle(color: Colors.grey.shade500),
      ),
      hintText: 'Search',
      textStyle: WidgetStatePropertyAll(
        TextStyle(color: Colors.grey.shade900),
      ),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      backgroundColor: WidgetStatePropertyAll(Colors.white70),
      shadowColor: WidgetStatePropertyAll(Colors.transparent),
    );
  }
}
