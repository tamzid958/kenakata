import 'package:flutter/material.dart';
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
    final double categoryHeight = 150;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 2),
        child: FittedBox(
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
          child: Row(
            children: <Widget>[
              Container(
                width: 200,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.white.withOpacity(0.3), BlendMode.dstIn),
                      image: AssetImage(shop.image),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.black87,
                    borderRadius: BorderRadius.all(Radius.circular(7.0))),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 4.0, bottom: 4.0, left: 12, right: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        shop.title,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Rating: " + shop.rating.toString(),
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                            IconButton(
                                icon: Icon(Icons.star),
                                color: Colors.orange[700],
                                iconSize: 16,
                                onPressed: () {}),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Visit Now",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          IconButton(
                              icon: Icon(Icons.arrow_forward_rounded),
                              color: Colors.white,
                              iconSize: 14,
                              onPressed: () {}),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
