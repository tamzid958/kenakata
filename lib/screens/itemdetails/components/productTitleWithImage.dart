import 'package:flutter/material.dart';
import 'package:kenakata/constants.dart';
import 'package:kenakata/models/product.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({Key key, @required this.product})
      : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: KdefaultPaddin, vertical: KdefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            product.title,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.shopNameByIdPerProduct,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            children: <Widget>[
              RichText(
                  text: TextSpan(children: [
                TextSpan(text: "\nPrice\n"),
                TextSpan(
                    text: "৳" + product.price.toString(),
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ]))
            ],
          )
        ],
      ),
    );
  }
}
