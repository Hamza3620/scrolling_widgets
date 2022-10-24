import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NotificationListenerExample extends StatefulWidget {
  const NotificationListenerExample({super.key});

  @override
  State<NotificationListenerExample> createState() =>
      _NotificationListenerExampleState();
}

class _NotificationListenerExampleState
    extends State<NotificationListenerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.purple,
        child: NotificationListener(
            onNotification: (Notification notification) {
              debugPrint(notification.toString());
              return true;
            },
            child: Center(
              child: Column(
                children: [
                  const Card(
                    elevation: 6,
                    color: Colors.orange,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Notifcation Center",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  containerThree(context),
                ],
              ),
            )),
      ),
    );
  }

  Container containerThree(BuildContext context) {
    return Container(
      color: Colors.green,
      margin: const EdgeInsets.all(16.0),
      child: containerTwo(context),
    );
  }

  Container containerTwo(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      color: Colors.lightGreen,
      child: containerOne(context),
    );
  }

  Container containerOne(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      color: Colors.yellow,
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width * 0.5,
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("Item $index"),
            );
          }),
    );
  }
}
