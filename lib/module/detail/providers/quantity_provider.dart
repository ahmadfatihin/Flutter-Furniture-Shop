import 'package:flutter_riverpod/flutter_riverpod.dart';

final quantityProvider =
    StateNotifierProvider<QuantityNotifier, int>((ref) => QuantityNotifier());

class QuantityNotifier extends StateNotifier<int> {
  QuantityNotifier() : super(1);

  void increment() => state += 1;

  void decrement() {
    if (state > 0) {
      state -= 1;
    }
  }
}
