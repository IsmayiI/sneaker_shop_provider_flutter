import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sneaker_shop_provider_flutter/components/components.dart';
import 'package:sneaker_shop_provider_flutter/pages/pages.dart';
import 'package:sneaker_shop_provider_flutter/provider/provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(selectedIndexProvider);

    const pages = [
      ShopPage(),
      CartPage(),
    ];

    final page = pages[selectedIndex];

    return Scaffold(
      appBar: AppBar(),
      drawer: const MyDrawer(),
      bottomNavigationBar: const MyNavbar(),
      body: page,
    );
  }
}
