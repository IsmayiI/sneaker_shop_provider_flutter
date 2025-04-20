import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop_provider_flutter/components/components.dart';
import 'package:sneaker_shop_provider_flutter/provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final page = context.watch<NavbarProvider>().page;

    return Scaffold(
      appBar: AppBar(),
      drawer: const MyDrawer(),
      bottomNavigationBar: const MyNavbar(),
      body: page,
    );
  }
}
