/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/menu.png
  AssetGenImage get menu => const AssetGenImage('assets/icons/menu.png');

  /// File path: assets/icons/navbar_cart.png
  AssetGenImage get navbarCart =>
      const AssetGenImage('assets/icons/navbar_cart.png');

  /// File path: assets/icons/navbar_home.png
  AssetGenImage get navbarHome =>
      const AssetGenImage('assets/icons/navbar_home.png');

  /// File path: assets/icons/navbar_person.png
  AssetGenImage get navbarPerson =>
      const AssetGenImage('assets/icons/navbar_person.png');

  /// File path: assets/icons/navbar_star.png
  AssetGenImage get navbarStar =>
      const AssetGenImage('assets/icons/navbar_star.png');

  /// File path: assets/icons/search.png
  AssetGenImage get search => const AssetGenImage('assets/icons/search.png');

  /// File path: assets/icons/star.png
  AssetGenImage get star => const AssetGenImage('assets/icons/star.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [menu, navbarCart, navbarHome, navbarPerson, navbarStar, search, star];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/furniture1.png
  AssetGenImage get furniture1 =>
      const AssetGenImage('assets/images/furniture1.png');

  /// File path: assets/images/furniture2.png
  AssetGenImage get furniture2 =>
      const AssetGenImage('assets/images/furniture2.png');

  /// File path: assets/images/furniture3.png
  AssetGenImage get furniture3 =>
      const AssetGenImage('assets/images/furniture3.png');

  /// File path: assets/images/furniture4.png
  AssetGenImage get furniture4 =>
      const AssetGenImage('assets/images/furniture4.png');

  /// File path: assets/images/sofa_grey.jpeg
  AssetGenImage get sofaGrey =>
      const AssetGenImage('assets/images/sofa_grey.jpeg');

  /// File path: assets/images/sofa_orange.jpg
  AssetGenImage get sofaOrange =>
      const AssetGenImage('assets/images/sofa_orange.jpg');

  /// File path: assets/images/sofa_purple.jpeg
  AssetGenImage get sofaPurple =>
      const AssetGenImage('assets/images/sofa_purple.jpeg');

  /// File path: assets/images/sofa_red.jpeg
  AssetGenImage get sofaRed =>
      const AssetGenImage('assets/images/sofa_red.jpeg');

  /// File path: assets/images/sofa_yellow.png
  AssetGenImage get sofaYellow =>
      const AssetGenImage('assets/images/sofa_yellow.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        furniture1,
        furniture2,
        furniture3,
        furniture4,
        sofaGrey,
        sofaOrange,
        sofaPurple,
        sofaRed,
        sofaYellow
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
