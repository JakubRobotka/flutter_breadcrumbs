import 'package:auto_route/auto_route.dart';
import 'package:auto_route_breadcrumb/router.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Column(
        children: [
          Container(
            child: Text("home"),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              context.pushRoute(SettingsRoute());
              // context.pushRoute(ItemsRouter(
              //   children: [Items()]
              // ));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Settings"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              context.pushRoute(ItemsRouterPage());
              // context.pushRoute(ItemsRouter(
              //   children: [Items()]
              // ));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Items"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              context.pushRoute(
                ItemsRouterPage(
                  children: [
                    const ItemsRoute(),
                    DetailRouterPage(
                      id: '111',
                      title: 'Rudá sojka',
                      children: [
                        ItemRoute(),
                      ],
                    )
                  ],
                ),
              );
              // context.navigateTo(ItemsRouter());
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Item"),
            ),
          )
        ],
      ),
    );
  }
}
