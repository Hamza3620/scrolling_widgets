import 'package:flutter/material.dart';
import 'package:scrolling_widgets/animated_list.dart';
import 'package:scrolling_widgets/custom_tile.dart';
import 'package:scrolling_widgets/scrolling_widgets/custom_scroll_view.dart';
import 'package:scrolling_widgets/scrolling_widgets/draggable_scrollable_sheet.dart';
import 'package:scrolling_widgets/scrolling_widgets/grid_view.dart';
import 'package:scrolling_widgets/scrolling_widgets/list_view.dart';
import 'package:scrolling_widgets/scrolling_widgets/nested_scroll_view.dart';
import 'package:scrolling_widgets/scrolling_widgets/notification_listener.dart';
import 'package:scrolling_widgets/scrolling_widgets/page_view.dart';
import 'package:scrolling_widgets/scrolling_widgets/refresh_indicator.dart';
import 'package:scrolling_widgets/scrolling_widgets/reoderable_listview.dart';
import 'package:scrolling_widgets/scrolling_widgets/scroll_configuration.dart';
import 'package:scrolling_widgets/scrolling_widgets/scrollable.dart';
import 'package:scrolling_widgets/scrolling_widgets/scrollbar.dart';
import 'package:scrolling_widgets/scrolling_widgets/single_child_scroll_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> titles = [
    'CustomScrollView',
    'DraggableScrollableSheet',
    'GridView',
    'Listview',
    'NestedScrollView',
    'NotificationListener',
    'PageView',
    'RefreshIndicator',
    'ReorderableListView',
    'ScrollConfiguration',
    'Scrollable',
    'Scrollbar',
    'SingleChildScrollView',
    'AnimatedList',
  ];
  List<Widget> nextPages = const [
    CustomScrollViewExample(),
    DraggableScrollableSheetExample(),
    GridViewExample(),
    ListViewExample(),
    NesterScrollViewExample(),
    NotificationListenerExample(),
    PageViewExample(),
    RefreshIndicatorExample(),
    ReorderableListViewExample(),
    ScrollConfigurationExample(),
    ScrollableExample(),
    ScrollBarExample(),
    SingleChildScrollViewExample(),
    AnimatedListExample()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.builder(
          itemCount: titles.length,
          itemBuilder: (context, index) {
            return CustomTile(
              title: '${index + 1}. ${titles[index]}',
              nextPage: nextPages[index],
              tileColor: Colors.amber[100 * ((index % 9) + 1)],
            );
          },
        ));
  }
}
