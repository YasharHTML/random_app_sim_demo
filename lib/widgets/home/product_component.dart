// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:weird_app/constants/colors_and_design/colors.dart';
import 'package:weird_app/navigate/navigators.dart';
import 'package:weird_app/widgets/home/dot.dart';
import 'package:weird_app/widgets/home/name_widget.dart';
import 'package:weird_app/widgets/home/photo_container.dart';
import 'package:weird_app/widgets/home/photo_with_dot.dart';
import 'package:weird_app/widgets/home/price.dart';

class ProductComponent extends StatelessWidget {
  const ProductComponent(
      {Key? key,
      required this.discountedPrice,
      required this.image,
      required this.price,
      required this.productName})
      : super(key: key);
  final int discountedPrice;
  final String image;
  final int price;
  final String productName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: GestureDetector(
        onTap: () => Navigators.pushToProduct(context, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PhotoWithDot(
              discountedPrice: discountedPrice,
              price: price,
              image: image,
            ),
            NameWidget(productName: productName),
            PriceWidget(discountedPrice: discountedPrice, price: price)
          ],
        ),
      ),
    );
  }
}


