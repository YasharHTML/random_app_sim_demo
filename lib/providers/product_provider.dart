import 'package:flutter/material.dart';
import 'package:weird_app/api/api.dart';

class ProductProvider extends ChangeNotifier {
  static int _currentIndex = 0;

  int get currentIndex => _currentIndex;
  //ssetter
  set currentIndex(int value) {
    _currentIndex = value;
    notifyListeners();
  }

  static List<Item> items = [
    Item(
        discountedPrice: 200,
        price: 200,
        image:
            "https://upload.wikimedia.org/wikipedia/commons/8/8c/Cristiano_Ronaldo_2018.jpg",
        name: "Ronald"),
    Item(
        discountedPrice: 100,
        price: 300,
        image:
            "https://upload.wikimedia.org/wikipedia/commons/8/8c/Cristiano_Ronaldo_2018.jpg",
        name: "Ronaldo"),
  ];

}