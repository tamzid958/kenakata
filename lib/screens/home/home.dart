import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    leading: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          "assets/images/logo.svg",
          fit: BoxFit.contain,
          width: 30,
          height: 30,
        ),
      ],
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.notifications_outlined),
        color: Colors.black87,
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.shopping_bag_outlined),
        color: Colors.black87,
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.person_outline_rounded),
        color: Colors.black87,
        onPressed: () {},
      )
    ],
  );
}
