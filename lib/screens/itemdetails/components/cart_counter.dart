import 'package:flutter/material.dart';
import 'package:kenakata/constants.dart';
import 'package:kenakata/models/product.dart';

class CartCounter extends StatefulWidget {
  CartCounter({Key key, @required this.product}) : super(key: key);
  final Product product;
  @override
  _CartCounterState createState() => _CartCounterState(product);
}

class _CartCounterState extends State<CartCounter> {
  Product product;
  _CartCounterState(this.product);
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlineButton(
            icon: Icons.remove,
            press: () {
              if (numOfItems > 1) {
                setState(() {
                  numOfItems--;
                });
              }
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: KdefaultPaddin / 2),
          child: Text(numOfItems.toString().padLeft(2, "0"),
              style: Theme.of(context).textTheme.headline6),
        ),
        buildOutlineButton(
            icon: Icons.add,
            press: () {
              if (product.stockAmount > 0) {
                setState(() {
                  numOfItems++;
                });
              }
            }),
      ],
    );
  }
}

SizedBox buildOutlineButton({IconData icon, Function press}) {
  return SizedBox(
    width: 48,
    height: 40,
    child: OutlineButton(
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      onPressed: press,
      child: Icon(icon),
    ),
  );
}
