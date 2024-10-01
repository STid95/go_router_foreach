import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_test/routes.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Products")),
        body: Center(
            child: Column(children: [
          TextButton(
            onPressed: () {
              context.goNamed(randomProductPath, pathParameters: {'productId': Random().nextInt(100).toString()});
            },
            child: const Text("Choose random product"),
          )
        ])));
  }
}
