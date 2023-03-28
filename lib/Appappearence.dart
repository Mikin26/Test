
import 'package:ecommerceapp/ecommerce.dart';
import 'package:ecommerceapp/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppAppearnce extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AppAppearencestate();
  }
}

class _AppAppearencestate extends State<AppAppearnce> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("App Appearence"),
      ),
      body: Column(
        children: [
          container("Light mode"),
          container("Dark mode"),
        ],
      ),
    );
  }

  Widget container(String a) {
    return InkWell(
      onTap: () {
        setState(() {});
      },
      child: Container(
        alignment: Alignment.centerLeft,
        child: Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            a,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          decoration: BoxDecoration(),
        ),
      ),
    );
  }
}
