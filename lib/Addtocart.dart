import 'package:ecommerceapp/Aboutphone.dart';
import 'package:ecommerceapp/products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Addtocart extends StatefulWidget {
  Products x = Products();
  Addtocart(this.x);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AddtocartState();
  }
}

class _AddtocartState extends State<Addtocart> {
@override
  void initState() {
    // TODO: implement initState

  }
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

        appBar: AppBar(
          centerTitle: true,
          title: Text("Add to Cart"),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: Aboutphone1.cart.map((e) {
              return Column(
                children: [

                  Container(
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.black))),
                    margin: EdgeInsets.all(10),
                  ),
                  Row(
                    children: [
                      Container(
                        child: Image.network(
                          e.image,
                          height: 170,
                          width: 170,
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                // margin: EdgeInsets.only(bottom: 100),
                                  child: Text(e.name,style:
                                  TextStyle(
                                      fontSize: 15
                                  ),)),
                              Container(
                                  margin: EdgeInsets.only(right: 60),
                                  child: Text(e.Size,style:
                                  TextStyle(
                                      fontSize: 15
                                  ),)),
                              Container(
                                  margin: EdgeInsets.only(right: 46),
                                  child: Text("Size:"+ e.Size,style:
                                  TextStyle(
                                      fontSize: 15
                                  ),)),
                              Container(
                                  margin: EdgeInsets.only(bottom: 120,right: 14),
                                  child: Text("Color: Deeppurple")),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ],
              );

            }).toList(),
          ),
        ),
    );
  }
}
