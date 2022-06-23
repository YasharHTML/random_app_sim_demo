

import 'package:flutter/material.dart';
import 'package:weird_app/providers/product_provider.dart';
import 'package:weird_app/widgets/common/bottom_navbar.dart';
import 'package:weird_app/widgets/common/floating_button.dart';
import 'package:weird_app/widgets/common/navbar.dart';
import 'package:weird_app/widgets/home/photo_container.dart';

class ViewProduct extends StatefulWidget {
  const ViewProduct({Key? key, required this.index}) : super(key: key);

  final int index;
  @override
  State<ViewProduct> createState() => _ViewProductState();
}

class _ViewProductState extends State<ViewProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(isProduct: false),
      floatingActionButton: const FloatinButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: const MyCustomCreatedEpicBottomNavigationBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [PhotoContainer(image: ProductProvider.items[widget.index].image)],
        ),
      ),
    );
  }

  
}
