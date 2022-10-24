import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScrollBarExample extends StatefulWidget {
  const ScrollBarExample({super.key});

  @override
  State<ScrollBarExample> createState() => _ScrollBarExampleState();
}

class _ScrollBarExampleState extends State<ScrollBarExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Scrollbar(
          trackVisibility: true,
          thumbVisibility: true,
          interactive: true,
          radius: Radius.elliptical(10, 10),
          thickness: 15,
          child: ListView.builder(
            itemCount: 500,
            itemBuilder: (context, index) {
              return Card(
                elevation: 6,
                child: ListTile(title: Text("Index # $index")),
              );
            },
          ),
        ),
      ),
    );
  }
}
