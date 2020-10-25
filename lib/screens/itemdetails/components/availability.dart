import 'package:flutter/material.dart';
import 'package:kenakata/screens/itemdetails/components/cart_counter.dart';
import 'package:kenakata/models/product.dart';

class Availibity extends StatelessWidget {
  const Availibity({Key key, @required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CartCounter(
            product: product,
          ),
          Row(
            children: [
              FlatButton(
                onPressed: () => {},
                color: (product.availability == false
                    ? Colors.red[900]
                    : Colors.green[900]),
                padding: EdgeInsets.all(5.0),
                textColor: Colors.white,
                height: 40,
                minWidth: 150,
                child: Row(
                  // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    product.availability == false
                        ? Text("STOCK OUT ")
                        : Text("Availability "),
                    Icon(product.availability == false
                        ? Icons.error_outline
                        : Icons.done),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
