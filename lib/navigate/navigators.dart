import 'package:flutter/material.dart';

class Navigators {
  static void navigateToMain(BuildContext context) {
    Navigator.pushReplacementNamed(
      context,
      '/home',
    );
  }

  static void pushToProduct(BuildContext context, int product) {
    Navigator.pushNamed(
      context,
      '/products',
      arguments: product,
    );
  }

  static void navigateToSignup(BuildContext context) {
    Navigator.pushNamed(
      context,
      '/signup',
    );
  }

  static void navigateToCart(BuildContext context) {
    Navigator.pushNamed(
      context,
      '/cart',
    );
  }

  static void navigateToLogin(BuildContext context) {
    Navigator.pushReplacementNamed(
      context,
      '/login',
    );
  }
}
