import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SingleChildScrollViewExample extends StatefulWidget {
  const SingleChildScrollViewExample({super.key});

  @override
  State<SingleChildScrollViewExample> createState() =>
      _SingleChildScrollViewExampleState();
}

class _SingleChildScrollViewExampleState
    extends State<SingleChildScrollViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                // A fixed-height child.
                color: const Color(0xffeeee00), // Yellow
                height: 120.0,
                alignment: Alignment.center,
                child: const Text('Fixed Height Content'),
              ),
              Container(
                // Another fixed-height child.
                color: const Color(0xff008000), // Green
                height: 120.0,
                alignment: Alignment.center,
                child: const Text('Fixed Height Content'),
              ),
              Container(
                // A fixed-height child.
                color: const Color(0xffeeee00), // Yellow
                height: 120.0,
                alignment: Alignment.center,
                child: const Text('Fixed Height Content'),
              ),
              Container(
                // Another fixed-height child.
                color: const Color(0xff008000), // Green
                height: 120.0,
                alignment: Alignment.center,
                child: const Text('Fixed Height Content'),
              ),
              Container(
                // A fixed-height child.
                color: const Color(0xffeeee00), // Yellow
                height: 120.0,
                alignment: Alignment.center,
                child: const Text('Fixed Height Content'),
              ),
              Container(
                // Another fixed-height child.
                color: const Color(0xff008000), // Green
                height: 120.0,
                alignment: Alignment.center,
                child: const Text('Fixed Height Content'),
              ),
              Container(
                // A fixed-height child.
                color: const Color(0xffeeee00), // Yellow
                height: 120.0,
                alignment: Alignment.center,
                child: const Text('Fixed Height Content'),
              ),
              Container(
                // Another fixed-height child.
                color: const Color(0xff008000), // Green
                height: 120.0,
                alignment: Alignment.center,
                child: const Text('Fixed Height Content'),
              ),
              Container(
                // A fixed-height child.
                color: const Color(0xffeeee00), // Yellow
                height: 120.0,
                alignment: Alignment.center,
                child: const Text('Fixed Height Content'),
              ),
              Container(
                // Another fixed-height child.
                color: const Color(0xff008000), // Green
                height: 120.0,
                alignment: Alignment.center,
                child: const Text('Fixed Height Content'),
              ),
            ],
          ),
        ));
  }
}
