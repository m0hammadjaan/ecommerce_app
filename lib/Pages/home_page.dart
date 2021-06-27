// ignore: import_of_legacy_library_into_null_safe
import 'dart:html';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/components/horizontal_listview.dart';
import 'package:ecommerce_app/components/products.dart';
import 'package:ecommerce_app/components/bottom_navigation.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("assets/images/macbook.jpg"),
          AssetImage("assets/images/macbook.jpg"),
          AssetImage("assets/images/macbook.jpg"),
          AssetImage("assets/images/macbook.jpg"),
          AssetImage("assets/images/macbook.jpg"),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 2,
        indicatorBgPadding: 4,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Ecom App UI",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          new IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            Padding(padding: EdgeInsets.all(12.0),
            child: Text("Items",
            style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
            ),
            image_carousel,
            new Padding(padding: const EdgeInsets.all(8.0),
            child: Text("More Categories",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            ),
            ),
            HorizontalList(),
            new Padding(padding: const EdgeInsets.all(20.0),
            child: Text("Popular Items",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            ),
            ),
            Container(
              height: 380.0,
              child: Products(),
            ),
            Container(
              height: 80.0,
              child: BottomNavigation(),
            )
          ],
        ),
      ),
    );
  }
}
