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
    final double categoryHeight = 80;
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
                width: 100,
                margin: EdgeInsets.only(right: 7),
                padding: EdgeInsets.only(left: 6, top: 6),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      shop.title,
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Rating : " + shop.rating.toString(),
                            style: TextStyle(
                              fontSize: 7,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 3),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.orange[900],
                          )
                        ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        SizedBox(height: 40),
                        Text(
                          "Visit Now  ",
                          style: TextStyle(
                              fontSize: 7,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        RotatedBox(
                          quarterTurns: 1,
                          child: Icon(
                            Icons.arrow_circle_up,
                            color: Colors.white,
                            size: 10,
                          ),
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
