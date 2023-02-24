import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:furniture_shop/const/colors.dart';
import 'package:furniture_shop/module/detail/providers/color_provider.dart';
import 'package:get_storage/get_storage.dart';

import '../../../../gen/assets.gen.dart';
import '../../enum/color_enum.dart';

class DetailFlexibleSpace extends ConsumerWidget {
  final String title;
  final String imagePath;
  const DetailFlexibleSpace({
    Key? key,
    required this.title,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final box = GetStorage();
    final color = ref.watch(colorProvider);

    return FlexibleSpaceBar(
      collapseMode: CollapseMode.pin,
      background: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Hero(
              tag: title,
              // Due to limitation of image and no backend, only sofaYellow that has color change, you can use CachedImageNetwork if the imageprovided in BE
              child: imagePath == Assets.images.sofaYellow.path
                  ? Image.asset(
                      imageVariant[color] ?? imagePath,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
            ),
          ),
          Positioned(
            bottom: -3,
            left: 0,
            right: 0,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: whiteBackground,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(50),
                ),
              ),
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.12,
                  height: 8,
                  decoration: BoxDecoration(
                      color: grey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(42)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
