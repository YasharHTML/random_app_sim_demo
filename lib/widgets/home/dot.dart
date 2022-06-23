import 'package:flutter/material.dart';
import 'package:weird_app/constants/colors_and_design/colors.dart';

class MyDot extends StatelessWidget {
  const MyDot({Key? key, required this.discountedPrice, required this.price})
      : super(key: key);
  final int discountedPrice;
  final int price;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        width: 50,
        height: 50,
        color: MyColors.gold,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            "-${100 * (price - discountedPrice) ~/ price}%",
            style: TextStyle(color: MyColors.black, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
