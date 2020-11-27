import 'package:flutter/material.dart';
import 'package:kenakata/constants.dart';
import 'package:kenakata/models/product.dart';
import 'package:kenakata/screens/itemdetails/components/body.dart';
import 'package:kenakata/screens/cart/cart.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kOrangeColor,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kOrangeColor,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        color: kTextLightColor,
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.shopping_bag_outlined),
          color: kTextLightColor,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CartScreen()),
            );
          },
        ),
        IconButton(
          icon: Icon(Icons.share_outlined),
          color: kTextLightColor,
          onPressed: () {},
        )
      ],
    );
  }
}
