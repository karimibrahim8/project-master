import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'getStarted.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), navigateToGetstarted
    );
  }

  void navigateToGetstarted() {
    Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=> GetStarted()), (route) => false);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Image(image: AssetImage('assets/images/logo black.png',
        ),
          width: 125,
          height: 125,
        ),
      ),
    );
  }
}
