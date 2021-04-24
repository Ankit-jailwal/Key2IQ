import 'package:flutter/material.dart';
import 'package:key2iqround1/routes.dart';
import 'package:key2iqround1/theme.dart';
import 'package:key2iqround1/screens/dashBoard/dashBoard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ShoProx',
      theme: theme(),
      initialRoute: dashBoard.routeName,
      routes: routes,
    );
  }
}
