import 'package:ecommerceapp/Aboutfile.dart';
import 'package:ecommerceapp/Aboutphone.dart';
import 'package:ecommerceapp/Addtocart.dart';
import 'package:ecommerceapp/Appappearence.dart';
import 'package:ecommerceapp/ecommerce.dart';
import 'package:ecommerceapp/products.dart';
import 'package:ecommerceapp/signuppage.dart';
import 'package:ecommerceapp/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  List<Products> abc = [];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 50),
          child: Container(
            height: 50,
            color: Colors.black,
            child: Text(
              "Apple Store",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Icon(Icons.apple_outlined, size: 40),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {

                });
              },
              icon: Icon(
                Icons.add_shopping_cart,
              ))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text("About us."),
              onTap: () {
                setState(() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => About()));
                });
              },
            ),
            ListTile(
              title: Text("App Appearence"),
              onTap: () {
                setState(() {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AppAppearnce()));
                });
              },
            ),
          ],
        ),
      ),
      body: Container(
          decoration: BoxDecoration(color: Colors.black87),
          child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    childAspectRatio: 2/2,
                    children: abc.map((e) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => Aboutphone1(e)));
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 20, color: CupertinoColors.black)
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.network(
                                e.image,
                                height: MediaQuery.of(context).size.height/9,
                                width: MediaQuery.of(context).size.width,
                              ),
                              Container(
                                child: Text(
                                  e.name,
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(child: Text(e.price.toString())),
                            ],
                          ),
                        ),
                      );
                    }).toList()),
      ),
    );
  }

  Widget container(String a) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Text(
        a,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }

  @override
  void initState() {
    Products a = Products(
      Size: "128 gb",
      About: "iphone 14 pro max 8GB (Dark Nova, 128 GB RAM, 256GB storage)",
        name: "iphone 14 pro Max",
        price: 149000,
        image:
            "https://www.reliancedigital.in/medias/Apple-iPhone-14-Pro-Max-Mobile-Phone-493177802-i-1-1200Wx1200H-300Wx300H?context=bWFzdGVyfGltYWdlc3wyMzk2N3xpbWFnZS9qcGVnfGltYWdlcy9oM2EvaGM1Lzk4OTA3MzQxNDU1NjYuanBnfDE2ZDAxYjgwYmYxZjFmZGFiZDQwMWZkNzUyMzYyYTc4Yjc2MDVkZWUyYWJjODkxMjFhY2MyMzk3M2MyYWIyMTY",
        ad: [Colors.deepPurple,Color(0xFFf3e5cc),Color(0xffeef1f0),Color(0xff595552)]);
    Products b = Products(
        About: "ipad pro",
        Style: "Wifi",
        Size: "128 gb",
        image:
            "https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/81gC7frRJyL._SX522_.jpg",
        name: "ipad pro",
        ad: [Colors.grey,Color(0xff49494b)],
        price: 96900);
    Products c = Products(
        name: "iphone 13",
        price: 69900,
        ad: [Color(0xff1f5d7a),Color(0xff8b0010),Color(0xfff5dbd4),Color(0xff364836),Color(0xfff8f3ee),Color(0xff151d25)],
        Size: "128 gb",
        About: "iphone 13",
        image:
            "https://d2xamzlzrdbdbn.cloudfront.net/products/be07ec4f-c214-497f-930f-24be44406ccb21170555.jpg");
    Products d = Products(
        name: "iphone 12",
        price: 59900,
        ad: [Color(0xffdbf1d8),Color(0xffb4a9e1),Colors.black,Color(0xff8b0010),],
        About: "iphone 12",
        Size: "128 gb",
        image:
            "https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/31jQ91XUDhS.jpg");
    Products e = Products(
        name: "Apple Watch Ultra",
        price: 89900,
        Size: "45mm",
        About: "Apple Watch Ultra",
        ad: [Color(0xfff06b39),Color(0xff364836),Color(0xffeef1f0)],
        image:
            "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MQDY3ref_VW_34FR+watch-49-titanium-ultra_VW_34FR_WF_CO+watch-face-49-alpine-ultra_VW_34FR_WF_CO_GEO_IN?wid=750&hei=712&trim=1%2C0&fmt=p-jpg&qlt=95&.v=1660713659063%2C1660927566964%2C1661371890735");
    Products f = Products(
        name: "ipad air",
        price: 59900,
        ad: [Color(0xff1f5d7a),Color(0xff8b0010),Color(0xfff5dbd4),Color(0xff364836),Color(0xfff8f3ee),Color(0xff151d25)],
        image:
            "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/ipad-air-select-wifi-purple-202203?wid=940&hei=1112&fmt=png-alpha&.v=1645066730601");
    Products g = Products(
        name: "MacBook Pro",
        Size: "16 gb RAM 512 gb",
        ad: [Colors.grey,Color(0xff49494b)],
        price: 129900,
        image:
            "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/mbp-silver-select-202206?wid=1280&hei=1190&fmt=jpeg&qlt=90&.v=1664497095569");
    Products h = Products(
        name: "AirPods Max",
        price: 59900,

        ad: [Colors.grey,Color(0xff49494b)],
        image:
            "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/airpods-max-hero-select-202011_FMT_WHH?wid=607&hei=556&fmt=jpeg&qlt=90&.v=1633623988000");
    abc.add(a);
    abc.add(b);
    abc.add(c);
    abc.add(d);
    abc.add(e);
    abc.add(f);
    abc.add(g);
    abc.add(h);
    //print(Aboutphone1.cart);
    // TODO: implement initState
    super.initState();
  }
}
