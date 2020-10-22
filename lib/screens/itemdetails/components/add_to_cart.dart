import 'package:flutter/material.dart';
import 'package:kenakata/screens/itemdetails/components/cart_counter.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CartCounter(),
          Container(
            height: 35,
            width: 100,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_bag),
              color: Colors.white,
              iconSize: 20,
            ),
            decoration: BoxDecoration(
              color: Colors.orange[900],
              borderRadius: BorderRadius.all(Radius.circular(7)),
            ),
          )
        ],
      ),
    );
  }
}
