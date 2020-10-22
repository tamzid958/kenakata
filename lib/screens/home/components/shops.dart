import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: FittedBox(
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
          child: Row(
            children: <Widget>[
              Container(
                width: 220,
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
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 4.0, bottom: 4.0, left: 12, right: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        shop.title,
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Rating: ",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          RatingBar(
                            initialRating: shop.rating,
                            itemSize: 15,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.orange[900],
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Visit Now",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          IconButton(
                              icon: Icon(Icons.arrow_forward_rounded),
                              color: Colors.white,
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
