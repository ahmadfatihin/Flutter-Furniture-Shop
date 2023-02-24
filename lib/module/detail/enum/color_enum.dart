import '../../../gen/assets.gen.dart';

enum ColorVariant { red, blue, green, yellow, grey, orange, purple }

final Map<ColorVariant, dynamic> imageVariant = {
  ColorVariant.red: Assets.images.sofaRed.path,
  ColorVariant.yellow: Assets.images.sofaYellow.path,
  ColorVariant.grey: Assets.images.sofaGrey.path,
  ColorVariant.orange: Assets.images.sofaOrange.path,
  ColorVariant.purple: Assets.images.sofaPurple.path,
};
