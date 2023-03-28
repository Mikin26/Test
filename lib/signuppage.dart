import 'package:ecommerceapp/HomePage.dart';
import 'package:ecommerceapp/products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Signupstate();
  }
}

class _Signupstate extends State<Signup> {
  bool a = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 30),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        Navigator.of(context).pop();
                      });
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 40,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "HERE ARE!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "AMAZING PRODUCTs OF",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "APPLE",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  height: 80,
                  width: 380,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "FIRST NAME",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 80,
                  width: 380,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "LAST NAME",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 80,
                  width: 380,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "EMAIL",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 80,
                  width: 380,
                  child: TextField(
                    obscureText: a,
                    decoration: InputDecoration(
                      hintText: "PASSWORD",
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (a) {
                                a = false;
                              } else {
                                a = true;
                              }
                            });
                          },
                          icon: a
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 8),
                    height: 50,
                    width: 250,
                    child: Center(
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
