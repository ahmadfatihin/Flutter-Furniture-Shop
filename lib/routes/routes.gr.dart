// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'routes.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    NavbarRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const NavbarScreen(),
      );
    },
    DetailRoute.name: (routeData) {
      final args = routeData.argsAs<DetailRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: DetailScreen(
          key: args.key,
          cardData: args.cardData,
        ),
      );
    },
    HomeMenu.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    WishlistMenu.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const WishlistScreen(),
      );
    },
    CartMenu.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CartScreen(),
      );
    },
    ProfileMenu.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          NavbarRoute.name,
          path: '/',
          children: [
            RouteConfig(
              HomeMenu.name,
              path: 'home',
              parent: NavbarRoute.name,
            ),
            RouteConfig(
              WishlistMenu.name,
              path: 'wishlist',
              parent: NavbarRoute.name,
            ),
            RouteConfig(
              CartMenu.name,
              path: 'cart',
              parent: NavbarRoute.name,
            ),
            RouteConfig(
              ProfileMenu.name,
              path: 'profile',
              parent: NavbarRoute.name,
            ),
          ],
        ),
        RouteConfig(
          DetailRoute.name,
          path: '/detail-screen',
        ),
      ];
}

/// generated route for
/// [NavbarScreen]
class NavbarRoute extends PageRouteInfo<void> {
  const NavbarRoute({List<PageRouteInfo>? children})
      : super(
          NavbarRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'NavbarRoute';
}

/// generated route for
/// [DetailScreen]
class DetailRoute extends PageRouteInfo<DetailRouteArgs> {
  DetailRoute({
    Key? key,
    required Map<String, dynamic> cardData,
  }) : super(
          DetailRoute.name,
          path: '/detail-screen',
          args: DetailRouteArgs(
            key: key,
            cardData: cardData,
          ),
        );

  static const String name = 'DetailRoute';
}

class DetailRouteArgs {
  const DetailRouteArgs({
    this.key,
    required this.cardData,
  });

  final Key? key;

  final Map<String, dynamic> cardData;

  @override
  String toString() {
    return 'DetailRouteArgs{key: $key, cardData: $cardData}';
  }
}

/// generated route for
/// [HomeScreen]
class HomeMenu extends PageRouteInfo<void> {
  const HomeMenu()
      : super(
          HomeMenu.name,
          path: 'home',
        );

  static const String name = 'HomeMenu';
}

/// generated route for
/// [WishlistScreen]
class WishlistMenu extends PageRouteInfo<void> {
  const WishlistMenu()
      : super(
          WishlistMenu.name,
          path: 'wishlist',
        );

  static const String name = 'WishlistMenu';
}

/// generated route for
/// [CartScreen]
class CartMenu extends PageRouteInfo<void> {
  const CartMenu()
      : super(
          CartMenu.name,
          path: 'cart',
        );

  static const String name = 'CartMenu';
}

/// generated route for
/// [ProfileScreen]
class ProfileMenu extends PageRouteInfo<void> {
  const ProfileMenu()
      : super(
          ProfileMenu.name,
          path: 'profile',
        );

  static const String name = 'ProfileMenu';
}
