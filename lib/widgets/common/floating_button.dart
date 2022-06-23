import 'package:flutter/material.dart';
import 'package:weird_app/constants/colors_and_design/colors.dart';

class FloatinButton extends StatelessWidget {
  const FloatinButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: MyColors.themeColor,
      child: const Icon(Icons.qr_code_scanner_outlined),
    );
  }
}
