import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_shop/const/colors.dart';
import 'package:furniture_shop/gen/assets.gen.dart';

import '../../../routes/routes.dart';
import '../providers/navbar_provider.dart';

class NavbarScreen extends ConsumerWidget {
  const NavbarScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoTabsScaffold(
        extendBody: true,
        routes: const [
          HomeMenu(),
          CartMenu(),
          WishlistMenu(),
          ProfileMenu(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: grey,
                  width: 0.5,
                ),
              ),
            ),
            child: BottomNavigationBar(
              iconSize: 30,
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              backgroundColor: white,
              showUnselectedLabels: true,
              selectedItemColor: red,
              unselectedItemColor: grey,
              currentIndex: tabsRouter.activeIndex,
              onTap: tabsRouter.setActiveIndex,
              items: [
                BottomNavigationBarItem(
                  label: '',
                  icon: ImageIcon(AssetImage(Assets.icons.navbarHome.path)),
                ),
                BottomNavigationBarItem(
                    label: '',
                    icon: ImageIcon(
                      AssetImage(Assets.icons.navbarCart.path),
                    )),
                BottomNavigationBarItem(
                    label: '',
                    icon: ImageIcon(AssetImage(Assets.icons.navbarStar.path))),
                BottomNavigationBarItem(
                    label: '',
                    icon:
                        ImageIcon(AssetImage(Assets.icons.navbarPerson.path))),
              ],
            ),
          );
        });
  }
}
