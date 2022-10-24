import 'package:flutter/material.dart';

class ReorderableListViewExample extends StatefulWidget {
  const ReorderableListViewExample({super.key});

  @override
  State<ReorderableListViewExample> createState() =>
      _ReorderableListViewExampleState();
}

class _ReorderableListViewExampleState
    extends State<ReorderableListViewExample> {
  final List<int> _items = List<int>.generate(50, (int index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ReorderableListView(
          padding: const EdgeInsets.all(8.0),
          children: <Widget>[
            for (int index = 0; index < _items.length; index += 1)
              ListTile(
                key: Key('$index'),
                tileColor:
                    _items[index].isOdd ? Colors.orange : Colors.yellow[200],
                title: Text('Item ${_items[index]}'),
                trailing: Icon(Icons.menu),
              ),
          ],
          onReorder: (int oldIndex, int newIndex) {
            debugPrint('OLD: $oldIndex - NEW: $newIndex');
            setState(() {
              if (oldIndex < newIndex) {
                newIndex -= 1;
              }
              final int item = _items.removeAt(oldIndex);
              _items.insert(newIndex, item);
            });
          },
        ));
  }
}
