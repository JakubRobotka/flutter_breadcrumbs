import 'package:auto_route/auto_route.dart';
import 'package:auto_route_breadcrumb/detailwrapper.dart';
import 'package:auto_route_breadcrumb/doublenesteditem.dart';
import 'package:auto_route_breadcrumb/home.dart';
import 'package:auto_route_breadcrumb/item.dart';
import 'package:auto_route_breadcrumb/items.dart';
import 'package:auto_route_breadcrumb/layout.dart';
import 'package:auto_route_breadcrumb/settings.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomePage,
      initial: true,
      path: '/',
      name: 'DOMOVE',
      meta: {
        'title': 'Home',
      },
    ),
    AutoRoute(
      page: SettingsPage,
    ),
    AutoRoute(
      page: LayoutPage,
      name: 'ItemsRouterPage',
      path: '/items',
      meta: {
        'title': 'Výpis prvků',
      },
      children: [
        AutoRoute(
          page: ItemsPage,
          initial: true,
          path: '',
        ),
        AutoRoute(
          page: DetailWrapperPage,
          path: ':id',
          name: 'DetailRouterPage',
          children: [
            AutoRoute(
              page: ItemPage,
              path: '',
              initial: true,
            ),
            AutoRoute(
              page: DoubleNestedItemPage,
              path: 'settings',
              meta: {
                'title': 'Nastavení',
              },
            )
          ],
        ),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {}
