import 'package:furniture_shop/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shop/const/text.dart';

import '../../../../gen/assets.gen.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: ImageIcon(
          AssetImage(Assets.icons.menu.path),
          color: black,
        ),
        onPressed: () {},
      ),
      title: Text(
        "Home",
        style: bold.copyWith(fontSize: 18),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: ImageIcon(
            AssetImage(Assets.icons.search.path),
            color: black,
          ),
        ),
      ],
    );
  }
}
