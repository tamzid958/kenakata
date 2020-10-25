import 'package:flutter/material.dart';
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
            onPressed: product.availability == true ? () => {} : () => {},
            color: Colors.orange[900],
            padding: EdgeInsets.all(5.0),
            minWidth: 150,
            height: 55,
            textColor: Colors.white,
            child: Row(
              // Replace with a Row for horizontal icon + text
              children: <Widget>[
                product.availability == true
                    ? Text("Add to Cart ")
                    : Text("Notify Me "),
                product.availability == true
                    ? Icon(Icons.shopping_bag_outlined)
                    : Icon(Icons.add_alert_outlined),
              ],
            ),
          ),
          FlatButton(
            onPressed: () => {},
            color: Colors.black,
            padding: EdgeInsets.all(5.0),
            minWidth: 150,
            height: 55,
            textColor: Colors.white,
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
