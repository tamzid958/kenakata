import 'package:flutter/material.dart';
import 'package:kenakata/constants.dart';
import 'package:kenakata/models/product.dart';
import 'package:kenakata/screens/itemdetails/components/add_to_cart_and_visit_shop.dart';
import 'package:kenakata/screens/itemdetails/components/productTitleWithImage.dart';
import 'package:kenakata/screens/itemdetails/components/wishlist_measured_unit.dart';
import 'package:kenakata/screens/itemdetails/components/description.dart';
import 'package:kenakata/screens/itemdetails/components/availability.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
                height: size.height,
                child: Stack(
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.white.withOpacity(0.3), BlendMode.dstIn),
                        image: AssetImage(product.image),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.black87,
                    )),
                    Container(
                      margin: EdgeInsets.only(top: size.height * 0.3),
                      //height: 500,
                      padding: EdgeInsets.only(
                          top: size.height * 0.04,
                          left: KdefaultPaddin,
                          right: KdefaultPaddin),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          WishlistMeasuredUnit(product: product),
                          Description(product: product),
                          Availibity(product: product),
                          SizedBox(
                            height: 25,
                          ),
                          AddToCart(),
                        ],
                      ),
                    ),
                    ProductTitleWithImage(product: product),
                  ],
                ))
          ],
        ),
      ),
    ));
  }
}
