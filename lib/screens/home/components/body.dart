import 'package:flutter/material.dart';
import 'package:kenakata/constants.dart';
import 'package:kenakata/models/product.dart';
import 'package:kenakata/models/shop.dart';
import 'package:kenakata/screens/home/components/products.dart';
import 'search_location.dart';
import 'shops.dart';

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
        //ShopCard(),
        /*Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: KdefaultPaddin),
            child: ListView.builder(
              //scrollDirection: Axis.horizontal,
              itemCount: shops.length,
              itemBuilder: (context, index) => ShopCard(
                shop: shops[index],
              ),
            ),
          ),
        ),*/
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: KdefaultPaddin),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: KdefaultPaddin / 4,
                crossAxisSpacing: KdefaultPaddin / 4,
                childAspectRatio: 0.97,
              ),
              itemBuilder: (context, index) => ItemCard(
                product: products[index],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
