import 'package:flutter/material.dart';
import 'package:kenakata/constants.dart';
import 'package:kenakata/models/product.dart';
import 'package:kenakata/models/shop.dart';
import 'package:kenakata/screens/home/components/products.dart';
import 'package:kenakata/screens/home/components/shops.dart';
import 'search_location.dart';
import 'package:kenakata/screens/itemdetails/details_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: KdefaultPaddin),
            child: LocationPickerWidget(),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: KdefaultPaddin),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: shops.length,
                itemBuilder: (context, index) => ShopCard(
                  shop: shops[index],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: KdefaultPaddin),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Trending Deals",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    RotatedBox(
                      quarterTurns: 1,
                      child: IconButton(
                          color: Colors.orange[900],
                          icon: Icon(Icons.arrow_circle_up),
                          iconSize: 30,
                          onPressed: () {}),
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: KdefaultPaddin),
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: KdefaultPaddin / 2,
                  crossAxisSpacing: KdefaultPaddin / 2,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (context, index) => ProductCard(
                  product: products[index],
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        product: products[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]);
  }
}
