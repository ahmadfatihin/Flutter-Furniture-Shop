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
    final selectedIndex = ref.watch(selectedIndexProvider);
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
              selectedItemColor: white,
              unselectedItemColor: black,
              currentIndex: tabsRouter.activeIndex,
              onTap: (index) {
                ref
                    .read(selectedIndexProvider.notifier)
                    .updateSelectedIndex(index);
                tabsRouter.setActiveIndex(index);
              },
              items: [
                BottomNavigationBarItem(
                  label: '',
                  icon: Container(
                      padding: const EdgeInsets.all(9),
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        color: selectedIndex == 0 ? grey : white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: ImageIcon(
                        AssetImage(Assets.icons.navbarHome.path),
                      )),
                ),
                BottomNavigationBarItem(
                  label: '',
                  icon: Container(
                      padding: const EdgeInsets.all(9),
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        color: selectedIndex == 1 ? grey : white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: ImageIcon(
                        AssetImage(Assets.icons.navbarCart.path),
                      )),
                ),
                BottomNavigationBarItem(
                  label: '',
                  icon: Container(
                      padding: const EdgeInsets.all(9),
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        color: selectedIndex == 2 ? grey : white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: ImageIcon(
                        AssetImage(Assets.icons.navbarStar.path),
                      )),
                ),
                BottomNavigationBarItem(
                  label: '',
                  icon: Container(
                      padding: const EdgeInsets.all(9),
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        color: selectedIndex == 3 ? grey : white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: ImageIcon(
                        AssetImage(Assets.icons.navbarPerson.path),
                      )),
                ),
              ],
            ),
          );
        });
  }
}
