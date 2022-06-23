// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
class DummyText extends StatelessWidget {
  const DummyText({Key? key, required this.text, required this.function}) : super(key: key);
  final dynamic function;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Container(
        width: MediaQuery.of(context).size.width - 20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1.0),
              child: Text(text, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            TextButton(onPressed: function, style: TextButton.styleFrom(padding: EdgeInsets.zero), child: Text("See All", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
          ],
        ),
      ),
    );
  }
}