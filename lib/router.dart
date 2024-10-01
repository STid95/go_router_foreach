import 'package:go_router/go_router.dart';
import 'package:go_router_test/product.dart';
import 'package:go_router_test/products.dart';
import 'package:go_router_test/routes.dart';

import 'home.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: homePath,
    builder: (context, state) => const HomePage(),
    name: homePath,
    routes: [
      GoRoute(path: productsPath, builder: (context, state) => const ProductsPage(), name: productsPath, routes: [
        GoRoute(
          path: randomProductPath,
          builder: (context, state) => ProductPage(id: state.pathParameters['productId']!),
          name: randomProductPath,
        ),
      ]),
    ],
  )
]);
