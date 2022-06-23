import 'package:flutter/material.dart';
import 'package:weird_app/widgets/home/dot.dart';
import 'package:weird_app/widgets/home/photo_container.dart';

class PhotoWithDot extends StatelessWidget {
  const PhotoWithDot(
      {Key? key,
      required this.discountedPrice,
      required this.price,
      required this.image})
      : super(key: key);
  final int discountedPrice;
  final int price;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: PhotoContainer(image: image),
        ),
      ),
      discountedPrice - price != 0
          ? Positioned(
              right: 0,
              child: MyDot(
                discountedPrice: discountedPrice,
                price: price,
              ),
            )
          : const Positioned(right: 0, child: Text(""),)
    ]);
  }
}
