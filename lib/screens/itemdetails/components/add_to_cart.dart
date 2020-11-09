import 'package:flutter/material.dart';
import 'package:kenakata/constants.dart';
import 'package:kenakata/models/product.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({Key key, @required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: product.stockAmount <= 0 ? () => {} : () => {},
      color: kOrangeColor,
      height: 55,
      textColor: kTextLightColor,
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.center, //Center Column contents vertically,
        crossAxisAlignment:
            CrossAxisAlignment.center, //Center Column contents horizontally,
        // Replace with a Row for horizontal icon + text
        children: <Widget>[
          product.stockAmount <= 0 ? Text("Notify Me ") : Text("Add to Cart "),
          product.stockAmount == 0
              ? Icon(Icons.add_alert_outlined)
              : Icon(Icons.shopping_bag_outlined),
        ],
      ),
    );
  }
}
