import 'package:flutter/material.dart';
import 'package:kenakata/constants.dart';
import 'package:kenakata/models/product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Card(
          elevation: 0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: KdefaultPaddin / 4),
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.4), BlendMode.dstIn),
                image: AssetImage(product.image),
                fit: BoxFit.cover,
              ),
              color: Colors.black87,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topRight,
                  // margin: EdgeInsets.only(top: 10.0, bottom: 5.0),
                  child: IconButton(
                    icon: Icon(Icons.favorite),
                    color: Colors.red,
                    onPressed: () {},
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(top: 55.0, bottom: 2.0, left: 5),
                  child: Text(
                    product.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      //fontSize: 12.0,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(left: 5),
                  child: Text(
                    "৳ " + product.price.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      //fontSize: 12.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
