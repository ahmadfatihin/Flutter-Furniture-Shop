import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedIndexProvider = StateNotifierProvider<SelectedIndexNotifier, int>(
    (ref) => SelectedIndexNotifier());

class SelectedIndexNotifier extends StateNotifier<int> {
  SelectedIndexNotifier() : super(0);

  void updateSelectedIndex(int index) {
    state = index;
  }
}
