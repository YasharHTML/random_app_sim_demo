import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weird_app/providers/product_provider.dart';
import 'package:weird_app/wrapper.dart';
void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => ProductProvider()),
  ],
  child: const MyApp(),),);
}

