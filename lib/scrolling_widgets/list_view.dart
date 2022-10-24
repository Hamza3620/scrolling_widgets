import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListViewExample extends StatefulWidget {
  const ListViewExample({super.key});

  @override
  State<ListViewExample> createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewExample> {
  double height = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView")),
      body: Container(
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: height,
              margin: const EdgeInsets.all(8.0),
              color: Colors.amber[50],
              child: const Center(child: Text('Entry A')),
            ),
            Container(
              height: height,
              margin: const EdgeInsets.all(8.0),
              color: Colors.amber[100],
              child: const Center(child: Text('Entry B')),
            ),
            Container(
              height: height,
              margin: const EdgeInsets.all(8.0),
              color: Colors.amber[200],
              child: const Center(child: Text('Entry C')),
            ),
            Container(
              height: height,
              margin: const EdgeInsets.all(8.0),
              color: Colors.amber[300],
              child: const Center(child: Text('Entry D')),
            ),
            Container(
              height: height,
              margin: const EdgeInsets.all(8.0),
              color: Colors.amber[400],
              child: const Center(child: Text('Entry E')),
            ),
            Container(
              height: height,
              margin: const EdgeInsets.all(8.0),
              color: Colors.amber,
              child: const Center(child: Text('Entry F')),
            ),
            Container(
              height: height,
              margin: const EdgeInsets.all(8.0),
              color: Colors.amber[400],
              child: const Center(child: Text('Entry G')),
            ),
            Container(
              height: height,
              margin: const EdgeInsets.all(8.0),
              color: Colors.amber,
              child: const Center(child: Text('Entry H')),
            ),
          ],
        ),
      ),
    );
  }
}
