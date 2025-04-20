import 'package:flutter/material.dart';
import 'package:sneaker_shop_provider_flutter/pages/pages.dart';

import 'route_names.dart';

abstract class Navigation {
  // initial route
  static const String initialRoute = RouteNames.intro;

  // routes
  static final routes = <String, Widget Function(BuildContext)>{
    // intro page
    RouteNames.intro: (_) => const IntroPage(),

    // home page
    RouteNames.home: (_) => const HomePage(),
  };
}
