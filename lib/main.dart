import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterresturant/screens/resturant.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white, // navigation bar color
      statusBarColor: Colors.white, // status bar color
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Colors.grey[800],
          cursorColor: Colors.black
      ),
      home: ResturantXD(),
    );
  }
}
