import 'package:get_storage/get_storage.dart';
import 'package:riverpod/riverpod.dart';

import '../enum/color_enum.dart';

class ColorNotifier extends StateNotifier<ColorVariant> {
  ColorNotifier() : super(ColorVariant.red);
  final box = GetStorage();

  void setColor(ColorVariant color) {
    state = color;
    box.write('color', color.toString().split('.').last);
  }

  ColorVariant getColor() {
    final colorString = box.read('color');
    if (colorString != null) {
      return ColorVariant.values.firstWhere(
        (color) => color.toString().split('.').last == colorString,
        orElse: () => ColorVariant.blue,
      );
    }
    return ColorVariant.red;
  }
}

final colorProvider = StateNotifierProvider<ColorNotifier, ColorVariant?>(
  (ref) => ColorNotifier(),
);
