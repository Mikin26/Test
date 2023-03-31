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
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Subtotal:- " + widget.x.price.toString(),
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Proceed to checkout",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.black))),
                  margin: EdgeInsets.all(10),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Image.network(
                        e.image,
                        height: 170,
                        width: 170,
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.all(5),
                      height: 200,
                      width: 200,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 10,bottom: 10),
                              alignment: Alignment.topLeft,
                          child: Text(e.About,style: TextStyle(
                            fontSize: 18,overflow: TextOverflow.ellipsis,
                          ),maxLines: 2,),),
                          Container(
                            padding: EdgeInsets.only(bottom: 5),
                            alignment: Alignment.topLeft,
                            child: Text(e.price.toString(),style: TextStyle(
                                fontSize: 22,fontWeight: FontWeight.w900
                            ),),),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(e.name,style: TextStyle(
                                fontSize: 16,color: Colors.grey.shade600
                            ),),),

                          Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Size:" + e.Size,
                                style: TextStyle(fontSize: 15),
                              )),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(e.Style,style: TextStyle(
                              fontSize: 18,
                            ),),),
                        ],
                      ),
                    ),
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
