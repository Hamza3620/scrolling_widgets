import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AnimatedListExample extends StatefulWidget {
  const AnimatedListExample({super.key});

  @override
  State<AnimatedListExample> createState() => _AnimatedListExampleState();
}

class _AnimatedListExampleState extends State<AnimatedListExample> {
  List<int> _items = [];
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Animated ListView"),
          actions: [
            IconButton(
                onPressed: () {
                  listKey.currentState!.removeItem(
                      0, (_, animation) => slideIt(0, animation),
                      duration: const Duration(milliseconds: 500));
                  _items.removeAt(0);
                },
                icon: const Icon(Icons.remove)),
            IconButton(
                onPressed: () {
                  listKey.currentState!.insertItem(0,
                      duration: const Duration(milliseconds: 500));
                  _items = []
                    ..add(counter++)
                    ..addAll(_items);
                },
                icon: const Icon(Icons.add))
          ],
        ),
        body: AnimatedList(
          key: listKey,
          initialItemCount: _items.length,
          itemBuilder: (context, index, animation) {
            return slideIt(index, animation);
          },
        ));
  }

  Widget slideIt(int index, animation) {
    int item = _items[index];
    TextStyle? textStyle = Theme.of(context).textTheme.headline4;
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1, 1),
        end: Offset(0.15, 0),
      ).animate(animation),
      child: Card(
        color: Colors.primaries[item % Colors.primaries.length],
        child: Center(
          child: Text('Item $item', style: textStyle),
        ),
      ),
    );
  }
}
