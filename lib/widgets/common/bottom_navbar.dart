// ignore_for_file:, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weird_app/constants/colors_and_design/colors.dart';
import 'package:weird_app/navigate/navigators.dart';
import 'package:weird_app/providers/product_provider.dart';

class MyCustomCreatedEpicBottomNavigationBar extends StatefulWidget {
  const MyCustomCreatedEpicBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyCustomCreatedEpicBottomNavigationBar> createState() =>
      _MyCustomCreatedEpicBottomNavigationBarState();
}

class _MyCustomCreatedEpicBottomNavigationBarState
    extends State<MyCustomCreatedEpicBottomNavigationBar> {
  // set index
  void _onItemTapped(BuildContext context, int index) {
    setState(() {
      if (context.read<ProductProvider>().currentIndex != index) {
        context.read<ProductProvider>().currentIndex = index;

        if (index == 0) {
          Navigators.navigateToMain(context);
        }

        if (index == 1) {
          Navigators.navigateToCart(context);
        }

        if (index == 3) {
          //to test route
          Navigator.pushNamed(context, '/test');
        }
      } else {
        null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: ('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: ('Cart'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: ('History'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: ('Profile'),
        ),
      ],
      selectedItemColor: MyColors.themeColor,
      currentIndex: context.read<ProductProvider>().currentIndex,
      onTap: (int i) => _onItemTapped(context, i),
      type: BottomNavigationBarType.fixed,
    );
  }
}
