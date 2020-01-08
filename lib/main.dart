import 'package:flutter/material.dart';

import 'package:flutter_web_app/ProfilePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColorDark: Colors.black,
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(),
    );
  }
}
