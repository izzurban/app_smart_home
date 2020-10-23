import 'package:flutter/material.dart';
import 'scenes/login.dart';
import 'scenes/aboutUs.dart';
import 'package:app_smart_home/scenes/aboutUs_trouble.dart';
import 'package:app_smart_home/scenes/aboutUs_fonts.dart';
import 'scenes/welcome.dart';
import 'scenes/devices.dart';
import 'scenes/routines.dart';
import 'scenes/groups.dart';
import 'scenes/add.dart';
import 'scenes/settings.dart';

export 'package:app_smart_home/scenes/aboutUs_trouble.dart';
export 'package:app_smart_home/scenes/aboutUs_fonts.dart';
export 'package:app_smart_home/scenes/aboutUs_trouble.dart';
export 'package:app_smart_home/widgets/pageTransition.dart';
export 'package:app_smart_home/widgets/menu/custom_navigation_drawer.dart';
export 'colors.dart';

class Routes {
  var routes = <String, WidgetBuilder>{
    '/login': (context) => LoginPage(),
    '/aboutUs': (context) => AboutUs(),
    '/aboutUsFonts': (context) => AboutUsFonts(),
    '/aboutUsTrouble': (context) => AboutUsTrouble(),
    '/welcome': (context) => Welcome(),
    '/devices': (context) => Devices(),
    '/routines': (context) => Routines(),
    '/groups': (context) => Groups(),
    '/add': (context) => Add(),
    '/settings': (context) => Settings(),
  };

  Routes() {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Smart Home',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(),
      initialRoute: '/welcome',
      routes: routes,
    ));
  }
}
