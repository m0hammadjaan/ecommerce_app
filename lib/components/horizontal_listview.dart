import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: "assets/images/tshirt.png",
            image_caption: "Clothes",
          ),
          Category(
            image_location: "assets/images/accessories.png",
            image_caption: "Jwellery",
          ),
          Category(
            image_location: "assets/images/formal.png",
            image_caption: "Gents",
          ),
          Category(
            image_location: "assets/images/dress.png",
            image_caption: "Girls",
          ),
          Category(
            image_location: "assets/images/informal.png",
            image_caption: "Jackets",
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category(
      {this.image_location = "assets/images/tshirt.png",
      this.image_caption = "Clothes"});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 80,
            ),
            subtitle: Container(
              child: Align(
                  alignment: Alignment.topCenter, child: Text(image_caption)),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('image_location', image_location));
  }
}
