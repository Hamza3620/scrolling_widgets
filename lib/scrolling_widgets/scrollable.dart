import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScrollableExample extends StatefulWidget {
  const ScrollableExample({super.key});

  @override
  State<ScrollableExample> createState() => _ScrollableExampleState();
}

class _ScrollableExampleState extends State<ScrollableExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Scrollable(
        axisDirection: AxisDirection.down,
        viewportBuilder: (context, position) {
          return Column(
            children: [],
          );
        },
      ),
    );
  }
}
