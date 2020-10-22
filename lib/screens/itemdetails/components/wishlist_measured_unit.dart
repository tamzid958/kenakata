import 'package:flutter/material.dart';
import 'package:kenakata/constants.dart';
import 'package:kenakata/models/product.dart';

class WishlistMeasuredUnit extends StatelessWidget {
  const WishlistMeasuredUnit({Key key, @required this.product})
      : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: 100,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(product.wishlist == false
                        ? Icons.favorite_border
                        : Icons.favorite),
                    color: Colors.red,
                    iconSize: 35,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.all(
                      Radius.circular(7),
                    ),
                  ),
                )
              ],
            )
          ],
        )),
        Expanded(
            child: RichText(
                text: TextSpan(style: TextStyle(color: kTextColor), children: [
          TextSpan(text: "Measured Unit\n"),
          TextSpan(
            text: product.measuredunit,
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          )
        ])))
      ],
    );
  }
}
