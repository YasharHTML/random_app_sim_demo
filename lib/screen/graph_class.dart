import 'package:flutter/material.dart';
import 'package:weird_app/navigate/navigators.dart';
import 'package:weird_app/widgets/auth/login.dart';
import 'package:weird_app/widgets/common/bottom_navbar.dart';
import 'package:weird_app/widgets/common/navbar.dart';
import 'package:weird_app/widgets/graph/graphs.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(isProduct: false),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: MyCustomCreatedEpicBottomNavigationBar(),
      body: GraphWidget(),
    );
  }
}
