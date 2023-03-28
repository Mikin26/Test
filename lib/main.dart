import 'package:ecommerceapp/ecommerce.dart';
import 'package:ecommerceapp/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Ecommerce());
}

class Ecommerce extends StatelessWidget {
  static bool b = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: b ? Brightness.light : Brightness.dark),
      home: Splash(),
    );
  }
}
