import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/src/foundation/key.dart';

import '../menu/menu.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key, required this.title, this.counter}) : super(key: key);
  final String title;
  final int? counter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Text(
            'Detail $counter',
            style: Theme.of(context).textTheme.headline1,
          ),
        ));
  }
}
