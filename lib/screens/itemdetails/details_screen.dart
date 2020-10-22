import 'package:flutter/material.dart';
import 'package:kenakata/models/product.dart';
import 'package:kenakata/screens/itemdetails/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[900],
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.orange[900],
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.add_shopping_cart_rounded),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.share),
          onPressed: () {},
        )
      ],
    );
  }
}
