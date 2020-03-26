import 'package:flutter/material.dart';
import 'package:flutter_app/navigate.dart';
import 'package:flutter_app/buttomnavi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //return Layout();
    return MaterialApp(
      title: 'Flutter demo',
      initialRoute: '/',
      routes: {
        '/': (context) => TopPage(),
        '/second': (context) => SecondRoute(),
      },
    );
  }
}

