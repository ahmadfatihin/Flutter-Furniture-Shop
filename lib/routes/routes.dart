import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shop/module/detail/screens/detail_screens.dart';
import 'package:furniture_shop/module/home/screens/home_screen.dart';

part 'routes.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeScreen, initial: true),
    AutoRoute(page: DetailScreen),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
