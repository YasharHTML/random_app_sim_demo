import 'package:flutter/material.dart';
import 'package:weird_app/api/api.dart';
import 'package:weird_app/constants/colors_and_design/colors.dart';
import 'package:weird_app/providers/product_provider.dart';
import 'package:weird_app/widgets/common/bottom_navbar.dart';
import 'package:weird_app/widgets/common/floating_button.dart';
import 'package:weird_app/widgets/common/navbar.dart';
import 'package:weird_app/widgets/home/dummy_text.dart';
import 'package:weird_app/widgets/home/photo_with_dot.dart';
import 'package:weird_app/widgets/home/product_component.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _getData() {
    List<ProductComponent> items = [];
    for (Item item in ProductProvider.items) {
      items.add(ProductComponent(
          discountedPrice: item.discountedPrice,
          image: item.image,
          price: item.price,
          productName: item.name));
    }
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, children: items);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(isProduct: false),
      bottomNavigationBar: const MyCustomCreatedEpicBottomNavigationBar(),
      floatingActionButton: const FloatinButton(),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          DummyText(function: () => print(''), text: "Discounted Products"),
          _getData(),
        ]),
      ),
    );
  }
}
