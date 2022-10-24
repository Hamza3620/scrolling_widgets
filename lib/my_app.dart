import 'package:flutter/material.dart';
import 'package:scrolling_widgets/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scrolling Widgets Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Scrolling Widgets Demo'),
      // home: ExampleWidget(),
    );
  }
}

// class ExampleWidget extends StatefulWidget {
//   const ExampleWidget({super.key});

//   @override
//   State<ExampleWidget> createState() => _ExampleWidgetState();
// }

// class _ExampleWidgetState extends State<ExampleWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Sample UI")),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Container(
//                   color: Colors.teal,
//                   height: MediaQuery.of(context).size.height * 0.2,
//                   width: MediaQuery.of(context).size.width * 0.4,
//                   child: Center(child: Text("Child 1")),
//                 ),
//                 Container(
//                   color: Colors.teal,
//                   height: MediaQuery.of(context).size.height * 0.2,
//                   width: MediaQuery.of(context).size.width * 0.4,
//                   child: Center(child: Text("Child 1")),
//                 )
//               ],
//             ),
//             Card(
//               elevation: 6,
//               child: ListTile(
//                 leading: Icon(Icons.person),
//                 title: Text("Name"),
//                 subtitle: Text("Hamza"),
//                 trailing: Icon(
//                   Icons.check,
//                   color: Colors.green,
//                 ),
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Container(
//                   color: Colors.teal,
//                   height: MediaQuery.of(context).size.height * 0.2,
//                   width: MediaQuery.of(context).size.width * 0.4,
//                   child: Center(child: Text("Child 1")),
//                 ),
//                 Container(
//                   color: Colors.teal,
//                   height: MediaQuery.of(context).size.height * 0.2,
//                   width: MediaQuery.of(context).size.width * 0.4,
//                   child: Center(child: Text("Child 1")),
//                 )
//               ],
//             ),
//             Card(
//               elevation: 6,
//               child: ListTile(
//                 leading: Icon(Icons.person),
//                 title: Text("Name"),
//                 subtitle: Text("Hamza"),
//                 trailing: Icon(
//                   Icons.check,
//                   color: Colors.green,
//                 ),
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Container(
//                   color: Colors.teal,
//                   height: MediaQuery.of(context).size.height * 0.2,
//                   width: MediaQuery.of(context).size.width * 0.4,
//                   child: Center(child: Text("Child 1")),
//                 ),
//                 Container(
//                   color: Colors.teal,
//                   height: MediaQuery.of(context).size.height * 0.2,
//                   width: MediaQuery.of(context).size.width * 0.4,
//                   child: Center(child: Text("Child 1")),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
