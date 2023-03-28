import 'package:ecommerceapp/Addtocart.dart';
import 'package:ecommerceapp/HomePage.dart';
import 'package:ecommerceapp/products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Aboutphone1 extends StatefulWidget {
  Products p = Products();
  Aboutphone1(this.p);

  static List<Products> cart = [];
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AboutphoneState();
  }
}


class _AboutphoneState extends State<Aboutphone1> {
  List<Products> abc = [];
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
        backgroundColor: CupertinoColors.black,
        title: Text(
          widget.p.name,
        ),
        actions: [
          IconButton(onPressed: (){
            setState(() {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Addtocart(widget.p)));
              print(Aboutphone1.cart.length);
            });
          },icon: Icon(
            Icons.add_shopping_cart
          ),)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  widget.p.image,
                  height: 400,
                  width: 400,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10,left: 20),
              child: Row(
                children: [
                  Text(
                    "Name: " + widget.p.name,
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            widget.p.Size.isNotEmpty ?
            Container(
              margin: EdgeInsets.only(top: 10,left: 20),
              child: Row(
                children: [
                  Text(
                    "Size: " + widget.p.Size,
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ) :Container(),
            widget.p.Style.isNotEmpty ?
            Container(
              margin: EdgeInsets.only(top: 10,left: 20),
              alignment: Alignment.centerLeft,
              child: Text(
              "Style: " +widget.p.Style,
                style: TextStyle(fontSize: 20),
              ),
            ) : Container(),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10,left: 20),
                  child: Text(
                    "Total :- " + widget.p.price,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10,right: 295),
              child: Text(
                "Colors:-",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
            Row(

              children: widget.p.ad!.map((e) {
                return Container(
                  margin: EdgeInsets.only(top: 10,bottom: 30,left: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: e,
                     ),
                  height: 30,
                  width: 30,
                );
              }).toList(),
            ),
            Container(

            ),
            InkWell(
              onTap: (){
                setState(() {
                  Aboutphone1.cart.add(widget.p);
                });
              },
                child: button("Add Cart")),
            button("Buy Now"),
          ],
        ),
      ),
    );
  }

  Widget button(String a) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 50,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.amber,
      ),
      child: Center(
        child: Text(
          a,
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
