
import 'package:furniture_shop/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:furniture_shop/const/text.dart';

import '../../../../gen/assets.gen.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: ImageIcon(
          AssetImage(Assets.images.menu.path),
          color: black,
        ),
        onPressed: () {},
      ),
      title: Text("Home"),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: ImageIcon(
            AssetImage(Assets.images.search.path),
            color: black,
          ),
        ),
      ],
    );
  }
}
