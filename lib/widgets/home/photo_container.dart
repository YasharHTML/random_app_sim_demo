import 'package:flutter/material.dart';

class PhotoContainer extends StatelessWidget {
  const PhotoContainer({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5 - 40,
      height: MediaQuery.of(context).size.width * 0.5 - 40,
      child: Image.network(
        image,
        fit: BoxFit.fill,
      ),
    );
  }
}
