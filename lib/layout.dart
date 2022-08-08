import 'package:auto_route/auto_route.dart';
import 'package:auto_route_breadcrumb/breadcrumbs.dart';
import 'package:flutter/material.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({Key? key}) : super(key: key);

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage>
    with AutoRouteAwareStateMixin<LayoutPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didPop() {
    print("ssssą");

    super.didPop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: AutoLeadingButton(),
      ),
      body: AutoRouter(
        builder: (context, content) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BreadCrumbs(),
              Expanded(
                child: content,
              ),
            ],
          );
        },
      ),
    );
  }
}
