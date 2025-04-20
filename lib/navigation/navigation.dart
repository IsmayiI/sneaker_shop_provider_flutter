import 'package:flutter/material.dart';
import 'package:sneaker_shop_provider_flutter/pages/pages.dart';

import 'route_names.dart';

abstract class Navigation {
  static String initialRoute = RouteNames.intro;

  static final routes = <String, Widget Function(BuildContext)>{
    RouteNames.intro: (_) => IntroPage(),
    RouteNames.home: (_) => HomePage(),
  };
}
