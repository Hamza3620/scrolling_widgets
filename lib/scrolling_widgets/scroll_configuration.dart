import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScrollConfigurationExample extends StatefulWidget {
  const ScrollConfigurationExample({super.key});

  @override
  State<ScrollConfigurationExample> createState() =>
      _ScrollConfigurationExampleState();
}

class _ScrollConfigurationExampleState
    extends State<ScrollConfigurationExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ScrollConfiguration(behavior: ScrollBehavior(), child: Container()),
    );
  }
}
