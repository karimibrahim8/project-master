import 'package:flutter/material.dart';
import 'package:untitled/birthofdate.dart';
import 'package:untitled/categ..dart';
import 'package:untitled/categories.dart';
import 'package:untitled/getStarted.dart';
import 'package:untitled/home.dart';
import 'package:untitled/loginSeller.dart';
import 'package:untitled/register.dart';
import 'package:untitled/registerAs.dart';
import 'package:untitled/registerSeller.dart';
import 'package:untitled/splash.dart';

import 'login.dart';
import 'mm.dart';
import 'otpSeller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Splashscreen()
    );
  }
}
