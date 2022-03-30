import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './login/login.dart';
import './home/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
       "/home" : (BuildContext context) => new home()
      },
      home: new MyHomePage(),
    );
  }
}
