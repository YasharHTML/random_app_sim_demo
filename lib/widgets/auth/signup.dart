// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weird_app/api/api.dart';
import 'package:weird_app/navigate/navigators.dart';
import 'package:weird_app/widgets/auth/form_component.dart';

class MySignupForm extends StatefulWidget {
  const MySignupForm({Key? key}) : super(key: key);

  @override
  State<MySignupForm> createState() => _MySignupFormState();
}

class _MySignupFormState extends State<MySignupForm> {
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _controller;
  late final TextEditingController _controller2;

  _signup(context) async {
    if (_formKey.currentState!.validate()) {
      bool result = await Api.register(_controller.text, _controller2.text);
      if (result) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Signup Successful')));
        Future.delayed(const Duration(seconds: 1)).then((value) {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        });
        Navigator.pop(context);
      }
    }
  }

  //init state

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    _controller = TextEditingController();
    _controller2 = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller2.dispose();
    super.dispose();
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
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
              style: TextButton.styleFrom(
                maximumSize: Size.fromHeight(50),
              ),
              onPressed: () => _signup(context),
              child: Text(
                "Signup",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
