import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_test/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Go_router test")),
        body: Center(
            child: Column(children: [
          TextButton(
            onPressed: () => context.goNamed(productsPath),
            child: Text("Start"),
          )
        ])));
  }
}
