import 'package:flutter/material.dart';
import 'package:kenakata/constants.dart';
import 'package:kenakata/models/product.dart';
import 'package:kenakata/screens/itemdetails/components/productTitleWithImage.dart';
import 'package:kenakata/screens/itemdetails/components/wishlist_measured_unit.dart';
import 'package:kenakata/screens/itemdetails/components/description.dart';
import 'package:kenakata/screens/itemdetails/components/add_to_cart.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
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
                          AddToCart(),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Row(children: [
                                FlatButton(
                                  onPressed: () => {},
                                  color: Colors.black,
                                  padding: EdgeInsets.all(5.0),
                                  minWidth: 320,
                                  height: 50,
                                  textColor: Colors.white,
                                  child: Row(
                                    // Replace with a Row for horizontal icon + text
                                    children: <Widget>[
                                      Text("Visit Shop"),
                                      Icon(Icons.arrow_forward_ios),
                                    ],
                                  ),
                                ),
                              ]),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ProductTitleWithImage(product: product),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
