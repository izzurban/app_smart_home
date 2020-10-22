import 'package:flutter/material.dart';
import 'scenes/login.dart';
import 'scenes/aboutUs.dart';
import 'scenes/welcome.dart';
import 'scenes/devices.dart';
import 'scenes/routines.dart';
import 'scenes/groups.dart';
import 'scenes/add.dart';
import 'scenes/settings.dart';
import 'widgets/pageTransition.dart';

class Routes {
  var routes = <String, WidgetBuilder>{
    '/login': (context) => LoginPage(),
    '/aboutUs': (context) => AboutUs(),
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
