import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key, required this.method, required this.text})
      : super(key: key);
  final Function method;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        maximumSize: Size.fromHeight(50),
      ),
      onPressed: () => method,
      child: Text(text,),
    );
  }
}
