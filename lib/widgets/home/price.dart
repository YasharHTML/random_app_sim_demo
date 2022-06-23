import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    Key? key,
    required this.discountedPrice,
    required this.price,
  }) : super(key: key);
  final int discountedPrice;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: discountedPrice - price != 0
          ? Text.rich(
              TextSpan(
                text: '\$$price',
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.lineThrough),
                children: [
                  TextSpan(
                    text: ' \$$discountedPrice',
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none),
                  ),
                ],
              ),
            )
          : Text(
              "\$${price}",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
    );
  }
}
