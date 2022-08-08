import 'package:auto_route_breadcrumb/router.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class BreadCrumbs extends StatefulWidget {
  @override
  State<BreadCrumbs> createState() => _BreadCrumbsState();
}

class _BreadCrumbsState extends State<BreadCrumbs> {
  @override
  Widget build(BuildContext context) {
    final list = context.router.topRoute;

    final breadcrumbs =
        context.router.topRoute.breadcrumbs.where((RouteMatch element) {
      // if ((element.path == '' || element.path == 'empty-router-page') &&
      //     element.name != 'Root') return false;
      // return true;
      if (element.meta['title'] != null || element.args?.title != null)
        return true;
      return false;
    }).toList();

    return Row(
      children: breadcrumbs
          .map((RouteMatch route) => BreadCrumbItem(routeInfo: route))
          .toList(),
    );
  }
}

class BreadCrumbItem extends StatelessWidget {
  final RouteMatch routeInfo;

  const BreadCrumbItem({Key? key, required this.routeInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      child: Container(
        child: Builder(builder: (context) {
          if (routeInfo.args != null) {
            return Text(routeInfo.args.title);
          }
          return Text(routeInfo.meta['title'] ?? 'Domu');
        }),
      ),
    );
  }
}
