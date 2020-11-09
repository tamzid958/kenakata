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
        child: Stack(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              elevation: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: KdefaultPaddin / 2),
                height: productHeight,
                width: productWidth,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        kTextLightColor.withOpacity(0.3), BlendMode.dstIn),
                    image: AssetImage(product.image),
                    fit: BoxFit.cover,
                  ),
                  color: kTextColor,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceAround, //Center Column contents vertically,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topRight,
                      child: IconButton(
                          icon: Icon(product.wishlist == false
                              ? Icons.favorite_border
                              : Icons.favorite),
                          color: kRedColor,
                          onPressed: () {}),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        product.title,
                        style: TextStyle(
                          color: kTextLightColor,
                          fontWeight: FontWeight.w400,
                          //fontSize: 12.0,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "৳ " + product.price.toString(),
                        style: TextStyle(
                          color: kTextLightColor,
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
