import 'package:ascend/dummyPage.dart';
import 'package:ascend/firstPage.dart';
import 'package:ascend/home%20page/aboutUs.dart';
import 'package:ascend/home%20page/contactUs.dart';
import 'package:ascend/home%20page/news.dart';
import 'package:ascend/home%20page/partners.dart';
import 'package:ascend/home%20page/myPrograms.dart';
import 'package:ascend/homePage.dart';
import 'package:ascend/login.dart';
import 'package:ascend/model/homeGallery.dart';
import 'package:ascend/programPageBy%20Fayis.dart';
import 'package:ascend/sign%20up/corporateRegistration.dart';
import 'package:ascend/sign%20up/corporateRegistration2.dart';
import 'package:ascend/sign%20up/individualRegistration.dart';
import 'package:ascend/sign%20up/individualRegistration2.dart';
import 'package:ascend/sign%20up/registrationCompleted.dart';
import 'package:ascend/sign%20up/signup.dart';
import 'package:ascend/sign%20up/studentRegistration2.dart';
import 'package:ascend/splashScreen.dart';
import 'package:ascend/sign%20up/studentRegistration.dart';
import 'package:flutter/material.dart';

import 'home page/gallery.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}


