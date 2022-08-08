import 'package:auto_route/auto_route.dart';
import 'package:auto_route_breadcrumb/breadcrumbs.dart';
import 'package:auto_route_breadcrumb/router.dart';
import 'package:flutter/material.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            context.navigateTo(DetailRouterPage(
              id: '111',
              title: 'Rudá sojka',
              children: [
                ItemRoute(),
              ],
            ));
          },
          child: Container(
            padding: EdgeInsets.all(20),
            child: Text("Rudá sojka"),
          ),
        ),
        InkWell(
          onTap: () {
            context.navigateTo(DetailRouterPage(
              id: '22',
              title: 'Žáne',
              children: [
                ItemRoute(),
              ],
            ));
          },
          child: Container(
            padding: EdgeInsets.all(20),
            child: Text("Žáne"),
          ),
        ),
      ],
    );
  }
}
