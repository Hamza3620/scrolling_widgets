import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  const CustomTile(
      {super.key,
      required this.nextPage,
      required this.title,
      this.tileColor = Colors.amber});
  final String title;
  final Widget nextPage;
  final Color? tileColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
            color: tileColor,
            border: Border.all(
              color: Colors.transparent,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(25))),
        child: ListTile(
          tileColor: Colors.transparent,
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => nextPage));
          },
          title: Text(
            title,
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
