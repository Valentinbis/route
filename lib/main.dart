import 'package:flutter/material.dart';
import 'pages/Home.dart';
import 'pages/List.dart';
import 'pages/Detail.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) => const Home(
          title: 'Home',
        ),
      ),
      GoRoute(
        path: '/list',
        builder: (BuildContext context, GoRouterState state) =>
            const List(title: 'list'),
      ),
      GoRoute(
          path: '/detail/:id',
          builder: (BuildContext context, GoRouterState state) {
            final id = int.tryParse(state.params['id'] ?? '');
            return Detail(title: 'detail', counter: id);
          }),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData.dark(),
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }
}
