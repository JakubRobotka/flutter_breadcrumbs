// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    DOMOVE.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const HomePage());
    },
    SettingsRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const SettingsPage());
    },
    ItemsRouterPage.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const LayoutPage());
    },
    ItemsRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const ItemsPage());
    },
    DetailRouterPage.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<DetailRouterPageArgs>(
          orElse: () => DetailRouterPageArgs(id: pathParams.getString('id')));
      return AdaptivePage<dynamic>(
          routeData: routeData,
          child:
              DetailWrapperPage(key: args.key, title: args.title, id: args.id));
    },
    ItemRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const ItemPage());
    },
    DoubleNestedItemRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const DoubleNestedItemPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(DOMOVE.name,
            path: '/', meta: <String, dynamic>{'title': 'Home'}),
        RouteConfig(SettingsRoute.name, path: '/settings-page'),
        RouteConfig(ItemsRouterPage.name,
            path: '/items',
            meta: <String, dynamic>{
              'title': 'Výpis prvků'
            },
            children: [
              RouteConfig(ItemsRoute.name,
                  path: '', parent: ItemsRouterPage.name),
              RouteConfig(DetailRouterPage.name,
                  path: ':id',
                  parent: ItemsRouterPage.name,
                  children: [
                    RouteConfig(ItemRoute.name,
                        path: '', parent: DetailRouterPage.name),
                    RouteConfig(DoubleNestedItemRoute.name,
                        path: 'settings',
                        parent: DetailRouterPage.name,
                        meta: <String, dynamic>{'title': 'Nastavení'})
                  ]),
              RouteConfig('*#redirect',
                  path: '*',
                  parent: ItemsRouterPage.name,
                  redirectTo: '',
                  fullMatch: true)
            ])
      ];
}

/// generated route for
/// [HomePage]
class DOMOVE extends PageRouteInfo<void> {
  const DOMOVE() : super(DOMOVE.name, path: '/');

  static const String name = 'DOMOVE';
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: '/settings-page');

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [LayoutPage]
class ItemsRouterPage extends PageRouteInfo<void> {
  const ItemsRouterPage({List<PageRouteInfo>? children})
      : super(ItemsRouterPage.name, path: '/items', initialChildren: children);

  static const String name = 'ItemsRouterPage';
}

/// generated route for
/// [ItemsPage]
class ItemsRoute extends PageRouteInfo<void> {
  const ItemsRoute() : super(ItemsRoute.name, path: '');

  static const String name = 'ItemsRoute';
}

/// generated route for
/// [DetailWrapperPage]
class DetailRouterPage extends PageRouteInfo<DetailRouterPageArgs> {
  DetailRouterPage(
      {Key? key,
      String? title,
      required String id,
      List<PageRouteInfo>? children})
      : super(DetailRouterPage.name,
            path: ':id',
            args: DetailRouterPageArgs(key: key, title: title, id: id),
            rawPathParams: {'id': id},
            initialChildren: children);

  static const String name = 'DetailRouterPage';
}

class DetailRouterPageArgs {
  const DetailRouterPageArgs({this.key, this.title, required this.id});

  final Key? key;

  final String? title;

  final String id;

  @override
  String toString() {
    return 'DetailRouterPageArgs{key: $key, title: $title, id: $id}';
  }
}

/// generated route for
/// [ItemPage]
class ItemRoute extends PageRouteInfo<void> {
  const ItemRoute() : super(ItemRoute.name, path: '');

  static const String name = 'ItemRoute';
}

/// generated route for
/// [DoubleNestedItemPage]
class DoubleNestedItemRoute extends PageRouteInfo<void> {
  const DoubleNestedItemRoute()
      : super(DoubleNestedItemRoute.name, path: 'settings');

  static const String name = 'DoubleNestedItemRoute';
}
