import 'package:flutter/material.dart';
import 'package:kenakata/constants.dart';
import 'package:kenakata/screens/notifications/body.dart';

class NotificationScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.orange[900],
    elevation: 0,
    leading: IconButton(
      icon: Icon(Icons.arrow_back_ios),
      color: Colors.white,
      onPressed: () => Navigator.pop(context),
    ),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: KdefaultPaddin, vertical: KdefaultPaddin / 1.5),
        child: Text("Notifications",
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: Colors.white)),
      )
    ],
  );
}
