import 'package:ecommerceapp/HomePage.dart';
import 'package:ecommerceapp/imagefile.dart';
import 'package:ecommerceapp/products.dart';
import 'package:ecommerceapp/signuppage.dart';
import 'package:flutter/material.dart';

class Eapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _EappState();
  }
}

class _EappState extends State<Eapp> {
  bool a = true;
  IconButton c = IconButton(onPressed: () {}, icon: Icon(Icons.visibility));

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 50,
                child: Image.network(
                  Imagelogo().Applelogo2,
                  fit: BoxFit.fill,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "Apple products",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
                    color: Colors.white,
                    child: Center(
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "Email",
                          suffixIcon: IconButton(
                              onPressed: () {}, icon: Icon(Icons.mail)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 80,
                    width: 380,
                    color: Colors.white,
                    child: Center(
                      child: TextField(
                        obscureText: a,
                        decoration: InputDecoration(
                            hintText: "Password",
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
                              borderRadius: BorderRadius.circular(10),
                            )),
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
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(builder: (context) => HomePage()),
                            (route) => false);
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20, bottom: 8),
                      height: 50,
                      width: 250,
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "Don't have account?",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Signup()));
                    },
                    child: Container(
                      child: Text(
                        " sign up.",
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Spacer(
                    flex: 6,
                  ),
                  Container(
                      height: 55,
                      width: 55,
                      margin: EdgeInsets.only(top: 80),
                      child: Image.network(Imagelogo().googlelogo)),
                  Spacer(
                    flex: 2,
                  ),
                  Container(
                      height: 55,
                      width: 55,
                      margin: EdgeInsets.only(top: 80),
                      child: Image.network(Imagelogo().facebooklogo)),
                  Spacer(
                    flex: 2,
                  ),
                  Container(
                      height: 55,
                      width: 55,
                      margin: EdgeInsets.only(top: 80),
                      child: Image.network(Imagelogo().Applelogo2)),
                  Spacer(
                    flex: 6,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
