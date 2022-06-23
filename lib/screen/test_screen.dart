// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:weird_app/widgets/common/bottom_navbar.dart';
import 'package:weird_app/widgets/common/navbar.dart';
import 'package:weird_app/widgets/settings/settings.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(isProduct: false),
      bottomNavigationBar: MyCustomCreatedEpicBottomNavigationBar(),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      body: SingleChildScrollView(
        child: SettingsWidget(),
      ),
    );
  }
}
