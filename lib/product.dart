import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ProductPage extends HookWidget {
  final String id;
  const ProductPage({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final quantity = useState<int?>(null);

    Future<int?> _quantityBuilder(BuildContext context) {
      return showDialog<int>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Quantity Dialog'),
            content: const Text(
              'New random quantity here',
            ),
            actions: [
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.labelLarge,
                ),
                child: const Text('Random quantity'),
                onPressed: () {
                  Navigator.of(context).pop(Random().nextInt(80));
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
        appBar: AppBar(title: Text("Product $id")),
        body: Padding(
            padding: const EdgeInsets.all(50),
            child: Center(
                child: Column(children: [
              Text("My current product is $id"),
              if (quantity.value != null) ...[
                const SizedBox(height: 10.0),
                Text("Quantity : ${quantity.value}"),
              ],
              const SizedBox(height: 20.0),
              TextButton(
                child: const Text("Choose quantity"),
                onPressed: () async {
                  quantity.value = await _quantityBuilder(context);
                },
              ),
            ]))));
  }
}
