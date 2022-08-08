import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class DetailWrapperPage extends StatelessWidget {
  final String? title;
  final String id;

  const DetailWrapperPage({
    Key? key,
    this.title,
    @PathParam() required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
