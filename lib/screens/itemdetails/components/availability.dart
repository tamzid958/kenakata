import 'package:flutter/material.dart';
import 'package:kenakata/constants.dart';
import 'package:kenakata/screens/itemdetails/components/cart_counter.dart';
import 'package:kenakata/models/product.dart';

class Availibity extends StatelessWidget {
  const Availibity({Key key, @required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CartCounter(
          product: product,
        ),
        Row(
          children: [
            FlatButton(
              onPressed: () => null,
              color: (product.stockAmount <= 0 ? kRedColor : kGreenColor),
              padding: EdgeInsets.all(12.0),
              textColor: kTextLightColor,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, //Center Column contents vertically,
                crossAxisAlignment: CrossAxisAlignment
                    .center, //Center Column contents horizontally,
                // Replace with a Row for horizontal icon + text
                children: <Widget>[
                  product.stockAmount <= 0
                      ? Text("Stock Out ")
                      : Text(
                          product.stockAmount < 9999
                              ? "Available : " + product.stockAmount.toString()
                              : "Available : ∞ ",
                          textAlign: TextAlign.center,
                        ),
                  Icon(
                    product.stockAmount <= 0 ? Icons.error_outline : null,
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
