import 'package:flutter/material.dart';
import 'package:kenakata/constants.dart';
import 'package:kenakata/models/shop.dart';
/*
class Shops extends StatefulWidget {
  @override
  _ShopsState createState() => _ShopsState();
}

class _ShopsState extends State<Shops> {
  List<String> shops = ["Shop1", "Shop2", "Shop3", "Shop4", "Shop4", "Shop4"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: shops.length,
          itemBuilder: (context, index) => buildShop(index),
        ));
  }

  Widget buildShop(int index) {
    return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: KdefaultPaddin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                shops[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: selectedIndex == index ? kTextColor : kTextLightColor,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: KdefaultPaddin / 4),
                height: 2,
                width: 30,
                color:
                    selectedIndex == index ? Colors.black : Colors.transparent,
              )
            ],
          ),
        ));
  }
}
*/

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
    return /*Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[*/
        ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Card(
          elevation: 0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: KdefaultPaddin / 4),
            height: 150,
            width: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.4), BlendMode.dstIn),
                image: AssetImage(shops[0].image),
                fit: BoxFit.cover,
              ),
              color: Colors.black87,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(top: 55.0, bottom: 2.0, left: 5),
                  child: Text(
                    shops[0].title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      //fontSize: 12.0,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(left: 5),
                  child: Text(
                    shops[0].rating.toString(),
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
        )
      ],
    );
  }
}
