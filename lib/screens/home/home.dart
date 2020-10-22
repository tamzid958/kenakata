import 'package:flutter/material.dart';
import 'package:kenakata/constants.dart';
import 'package:kenakata/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: Icon(Icons.notifications_rounded),
      color: kTextColor,
      onPressed: () {},
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.add_shopping_cart_rounded),
        color: kTextColor,
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.person),
        color: kTextColor,
        onPressed: () {},
      )
    ],
  );
}
