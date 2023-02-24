import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shop/module/cart/screens/cart_screen.dart';
import 'package:furniture_shop/module/detail/screens/detail_screens.dart';
import 'package:furniture_shop/module/home/screens/home_screen.dart';
import 'package:furniture_shop/module/home/screens/navbar_screen.dart';

import '../module/profile/screens/profile_screen.dart';
import '../module/wishlist/screens/wishlist_screen.dart';

part 'routes.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: NavbarScreen, initial: true, children: [
      AutoRoute(
        page: HomeScreen,
        path: "home",
        name: "HomeMenu",
      ),
      AutoRoute(page: WishlistScreen, path: "wishlist", name: "WishlistMenu"),
      AutoRoute(page: CartScreen, path: "cart", name: "CartMenu"),
      AutoRoute(page: ProfileScreen, path: "profile", name: "ProfileMenu"),
    ]),
    AutoRoute(page: DetailScreen),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
