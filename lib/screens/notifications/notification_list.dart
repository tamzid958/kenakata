import 'package:flutter/material.dart';
import 'package:kenakata/models/push_notification.dart';

class NotificationCard extends StatelessWidget {
  final PushNotification pushNotification;
  const NotificationCard({Key key, this.pushNotification}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: ListTile(
        title: Text(
          pushNotification.title + " => " + pushNotification.time,
          style: TextStyle(color: Colors.black),
        ),
        subtitle: Text(
          pushNotification.description,
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              Icons.mark_chat_read,
              size: 20.0,
              color: Colors.orange[900],
            ),
          ],
        ),
      ),
    );
  }
}
