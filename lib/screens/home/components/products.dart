import 'package:flutter/material.dart';
import 'package:kenakata/constants.dart';
import 'package:kenakata/models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ProductCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double productHeight = size.height / 5;
    final double productWidth = size.width / 4;
    return GestureDetector(
        onTap: press,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              elevation: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: KdefaultPaddin / 4),
                height: productHeight,
                width: productWidth,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.white.withOpacity(0.3), BlendMode.dstIn),
                    image: AssetImage(product.image),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(left: productWidth / 2),
                      child: IconButton(
                          icon: Icon(product.wishlist == false
                              ? Icons.favorite_border
                              : Icons.favorite),
                          color: Colors.red,
                          onPressed: () {}),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(
                          top: productHeight / 5, left: productWidth / 13),
                      child: Text(
                        product.title,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          //fontSize: 12.0,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(left: productWidth / 13),
                      child: Text(
                        "৳ " + product.price.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          //fontSize: 12.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
