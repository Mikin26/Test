import 'dart:async';

import 'package:ecommerceapp/ecommerce.dart';
import 'package:ecommerceapp/imagefile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SplashScreen();
  }
}

class _SplashScreen extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => Eapp()), (route) => false);
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
          child: Center(
              child: Image.network(
        Imagelogo().Applelogo,
        height: 500,
        width: 500,
      ))),
    );
  }
}
