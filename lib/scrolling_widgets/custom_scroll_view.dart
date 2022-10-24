import 'package:flutter/material.dart';

class CustomScrollViewExample extends StatefulWidget {
  const CustomScrollViewExample({super.key});

  @override
  State<CustomScrollViewExample> createState() =>
      _CustomScrollViewExampleState();
}

class _CustomScrollViewExampleState extends State<CustomScrollViewExample> {
  // List<int> top = <int>[];
  // List<int> bottom = <int>[0];
  @override
  Widget build(BuildContext context) {
    // const Key centerKey = ValueKey<String>('bottom-sliver-list');
    return SafeArea(
      child: Scaffold(
          // appBar: AppBar(),
          // appBar: AppBar(
          //   title: const Text('Press on the plus to add items above and below'),
          //   leading: IconButton(
          //     icon: const Icon(Icons.add),
          //     onPressed: () {
          //       setState(() {
          //         top.add(-top.length - 1);
          //         bottom.add(bottom.length);
          //       });
          //     },
          //   ),
          // ),
          // body: CustomScrollView(
          //   center: centerKey,
          //   slivers: <Widget>[
          //     SliverList(
          //       delegate: SliverChildBuilderDelegate(
          //         (BuildContext context, int index) {
          //           return Container(
          //             alignment: Alignment.center,
          //             color: Colors.blue[200 + top[index] % 4 * 100],
          //             height: 100 + top[index] % 4 * 20.0,
          //             child: Text('Item: ${top[index]}'),
          //           );
          //         },
          //         childCount: top.length,
          //       ),
          //     ),
          //     SliverList(
          //       key: centerKey,
          //       delegate: SliverChildBuilderDelegate(
          //         (BuildContext context, int index) {
          //           return Container(
          //             alignment: Alignment.center,
          //             color: Colors.blue[200 + bottom[index] % 4 * 100],
          //             height: 100 + bottom[index] % 4 * 20.0,
          //             child: Text('Item: ${bottom[index]}'),
          //           );
          //         },
          //         childCount: bottom.length,
          //       ),
          //     ),
          //   ],
          // ),
          body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          expandedHeight: 250.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Image.network('https://picsum.photos/250?image=0'),
          ),
        ),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: Text('Grid Item $index'),
              );
            },
            childCount: 20,
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 50.0,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (index % 9)],
                child: Text('List Item $index'),
              );
            },
          ),
        ),
      ])),
    );
  }
}
