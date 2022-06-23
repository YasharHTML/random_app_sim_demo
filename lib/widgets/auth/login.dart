// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:weird_app/api/api.dart';
import 'package:weird_app/navigate/navigators.dart';
import 'package:weird_app/providers/product_provider.dart';
import 'package:weird_app/widgets/auth/button.dart';
import 'package:weird_app/widgets/auth/form_component.dart';

class MyLoginForm extends StatefulWidget {
  const MyLoginForm({Key? key}) : super(key: key);

  @override
  State<MyLoginForm> createState() => _MyLoginFormState();
}

class _MyLoginFormState extends State<MyLoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _controller = TextEditingController();
  final _controller2 = TextEditingController();

  _login(context) {
    if (_formKey.currentState!.validate()) {
      Api.login(_controller.text, _controller2.text).then((value) {
        if (value) {
          Navigators.navigateToMain(context);
        }
      });
    }
  }

  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomFormField(
            text: 'Username',
            controller: _controller,
          ),
          CustomFormField(
            text: 'Password',
            controller: _controller2,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  maximumSize: Size.fromHeight(50),
                ),
                onPressed: () => _login(context),
                child: Text(
                  "Login",
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  maximumSize: Size.fromHeight(50),
                ),
                onPressed: () => Navigators.navigateToSignup(context),
                child: Text(
                  "Don't have a account? Sign up now.",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
