import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/src/foundation/key.dart';

import '../menu/menu.dart';

class List extends StatefulWidget {
  const List({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<List> createState() => _ListState();
}

class _ListState extends State<List> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Menu(),
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
              onPressed: () => context.push('/detail/$counter'),
              icon: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ))
        ],
      ),
      body: Center(
        child: Text(
          'List $counter',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
