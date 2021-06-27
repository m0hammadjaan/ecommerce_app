import 'dart:html';

import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "MacBook Pro",
      "picture": "assets/images/macbook.jpg",
      "ratings": "4.9",
    },
    {
      "name": "MacBook Pro",
      "picture": "assets/images/macbook.jpg",
      "ratings": "4.9",
    },
    {
      "name": "MacBook Pro",
      "picture": "assets/images/macbook.jpg",
      "ratings": "4.9",
    },
    {
      "name": "MacBook Pro",
      "picture": "assets/images/macbook.jpg",
      "ratings": "4.9",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]["name"],
            prod_picture: product_list[index]["picture"],
            prod_ratings: product_list[index]["ratings"],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_ratings;
  Single_prod({this.prod_name, this.prod_picture, this.prod_ratings});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.0),
          topRight: Radius.circular(8.0)
        )
      ),
      child: Hero(tag: prod_name, 
      child: Material(
        child: InkWell(
          onTap: (){},
          child: GridTile(
            footer: Container(
              color: Colors.white,
              child: ListTile(
                leading: Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold),
                ),
                title: Text("$prod_ratings"),
              ),
            ),
            child: Image.asset(prod_picture,fit: BoxFit.cover,)),
        ),
      ),
      ),
    );
  }
}
