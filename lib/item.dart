import 'package:auto_route/auto_route.dart';
import 'package:auto_route_breadcrumb/router.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("item"),
        Container(
          child: InkWell(
            onTap: () {
              context.navigateTo(
                const DoubleNestedItemRoute(),
              );
            },
            child: Text("detail settings"),
          ),
        ),
      ],
    );
  }
}
