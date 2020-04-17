import 'package:dribbbledanimation/Screens/autoConfinement/index.dart';
import 'package:dribbbledanimation/Screens/cafe/index.dart';
import 'package:dribbbledanimation/Screens/rassemblement/index.dart';
import 'package:dribbbledanimation/Screens/restaurant/index.dart';
import 'package:flutter/material.dart';
import 'package:dribbbledanimation/Screens/Home/index.dart';
import 'package:dribbbledanimation/Screens/Login/index.dart';
import 'package:fluro/fluro.dart';

import 'Screens/couvreFeu/index.dart';
import 'Screens/monopole/index.dart';
import 'Screens/quarantaine/index.dart';


class Routes {

  Routes() {
    runApp(new MaterialApp(
     
      debugShowCheckedModeBanner: false,
  
 
    routes:{
      '/home' : (context)=> HomeScreen(),
      '/login' : (context) => LoginScreen(),
      '/restaurant' : (context) => Restaurant(),
      '/cafe' : (context) => Cafe(),
      '/gathering' : (context) => Gathering(),
      '/couvreFeu' : (context) =>CouvreFeu(),
      '/quarantaine' : (context) => Quarantaine(),
      '/autoConfinement': (context) => AutoConfinement(),
      '/monopole' : (context) => Monopole(),
    },
    initialRoute: '/home',
 title: "أحميها",
    ));
  }

}