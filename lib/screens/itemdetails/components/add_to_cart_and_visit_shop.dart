import 'package:flutter/material.dart';
import 'package:kenakata/constants.dart';
import 'package:kenakata/models/product.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({Key key, @required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FlatButton(
            onPressed: product.stockAmount <= 0 ? () => {} : () => {},
            color: kOrangeColor,
            padding: EdgeInsets.all(5.0),
            minWidth: 150,
            height: 55,
            textColor: kTextLightColor,
            child: Row(
              // Replace with a Row for horizontal icon + text
              children: <Widget>[
                product.stockAmount <= 0
                    ? Text("Notify Me ")
                    : Text("Add to Cart "),
                product.stockAmount == 0
                    ? Icon(Icons.add_alert_outlined)
                    : Icon(Icons.shopping_bag_outlined),
              ],
            ),
          ),
          FlatButton(
            onPressed: () => {},
            color: kTextColor,
            padding: EdgeInsets.all(5.0),
            minWidth: 150,
            height: 55,
            textColor: kTextLightColor,
            child: Row(
              // Replace with a Row for horizontal icon + text
              children: <Widget>[
                Text("Visit Shop "),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ]);
  }
}
