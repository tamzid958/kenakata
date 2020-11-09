import 'package:flutter/material.dart';
import 'package:kenakata/constants.dart';
import 'package:kenakata/models/push_notification.dart';
import 'package:kenakata/screens/notifications/notification_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: KdefaultPaddin),
        child: ListView.separated(
          itemCount: pushNotifications.length,
          separatorBuilder: (BuildContext context, int index) => Divider(),
          itemBuilder: (context, int index) => NotificationCard(
            pushNotification: pushNotifications[index],
          ),
        ),
      ),
    );
  }
}
