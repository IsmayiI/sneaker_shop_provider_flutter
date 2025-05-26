import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'cart.dart';
import 'cart_notifier.dart';

final cartProvider = StateNotifierProvider<CartNotifier, Cart>(
  (ref) => CartNotifier(),
);
