import 'package:flutter/material.dart';
import 'package:kenakata/constants.dart';
import 'package:lottie/lottie.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: [
          Center(
            child: Lottie.asset("assets/lottiefiles/splash_screen.json",
                repeat: true),
          ),
          Center(
            child: Text('KenaKata',
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: kTextLightColor)),
          ),
        ],
      ),
    ));
  }
}
