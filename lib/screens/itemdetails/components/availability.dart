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
        children: <Widget>[
          CartCounter(
            product: product,
          ),
          Row(
            children: [
              FlatButton(
                onPressed: () => null,
                color: (product.stockAmount <= 0
                    ? Colors.red[700]
                    : Colors.green[700]),
                textColor: Colors.white,
                height: 40,
                minWidth: 150,
                child: Row(
                  // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    product.stockAmount <= 0
                        ? Text("Stock Out ")
                        : Text(
                            product.stockAmount < 9999
                                ? "Availability : " +
                                    product.stockAmount.toString()
                                : "Availability : ∞ ",
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
      ),
    );
  }
}
