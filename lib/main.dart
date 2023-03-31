import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerceapp/ecommerce.dart';
import 'package:ecommerceapp/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
