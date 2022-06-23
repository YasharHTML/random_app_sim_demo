import 'package:flutter/material.dart';
import 'package:weird_app/constants/colors_and_design/colors.dart';
class CustomFormField extends StatefulWidget {
  const CustomFormField({Key? key, required this.controller, required this.text}) : super(key: key);
  final String text;
  final TextEditingController controller;
  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          labelText: widget.text,
          labelStyle: const TextStyle(
            color: MyColors.black,
            fontSize: 18,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: MyColors.themeColor),
            borderRadius: BorderRadius.zero
          ),
        ),
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return 'Please enter a valid $widget.text';
          }
        },
        style: const TextStyle(
          color: MyColors.black,
          fontSize: 20,
        ),
      ),
    );
  }
}