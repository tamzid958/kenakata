import 'package:flutter/material.dart';
import 'package:kenakata/constants.dart';
import 'package:kenakata/models/shop.dart';

class ShopCard extends StatelessWidget {
  final Shop shop;
  final Function press;
  const ShopCard({
    Key key,
    this.shop,
    this.press,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double shopHeight = size.height / 6;
    final double shopWidth = size.width / 3;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: FittedBox(
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
          child: Row(
            children: <Widget>[
              Container(
                width: shopWidth,
                margin: EdgeInsets.only(right: 7),
                padding: EdgeInsets.only(left: 6, top: 6),
                height: shopHeight,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          kTextLightColor.withOpacity(0.3), BlendMode.dstIn),
                      image: AssetImage(shop.image),
                      fit: BoxFit.cover,
                    ),
                    color: kTextColor,
                    borderRadius: BorderRadius.all(Radius.circular(7.0))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      shop.title,
                      style: TextStyle(
                          fontSize: 15,
                          color: kTextLightColor,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Rating : " + shop.rating.toString(),
                            style: TextStyle(
                              fontSize: 10,
                              color: kTextLightColor,
                            ),
                          ),
                          Icon(
                            Icons.star,
                            size: 12,
                            color: kOrangeColor,
                          )
                        ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        SizedBox(height: 30),
                        Text(
                          "Visit Now  ",
                          style: TextStyle(
                              fontSize: 10,
                              color: kTextLightColor,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: kTextLightColor,
                          size: 9,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
