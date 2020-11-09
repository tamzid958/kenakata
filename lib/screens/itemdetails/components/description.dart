import 'package:flutter/material.dart';
import 'package:kenakata/constants.dart';
import 'package:kenakata/models/product.dart';

class Description extends StatelessWidget {
  const Description({Key key, @required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: KdefaultPaddin),
        child: Text(
          product.description,
          textAlign: TextAlign.justify,
          style: TextStyle(height: 1.2, fontSize: 15),
        ));
  }
}
