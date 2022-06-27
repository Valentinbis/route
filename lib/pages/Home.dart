import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/src/foundation/key.dart';

import '../menu/menu.dart';

class Home extends StatelessWidget {
  const Home({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Menu(),
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Text(
            'Home',
            style: Theme.of(context).textTheme.headline1,
          ),
        ));
  }
}
