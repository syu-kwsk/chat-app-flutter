import 'package:flutter/material.dart';
import 'package:flutter_app/layout.dart';
import 'package:flutter_app/tapbutton.dart';
import 'package:flutter_app/interactive.dart';
import 'package:flutter_app/navigate.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //return Layout();
    return MaterialApp(
      title: 'Flutter demo',
      home: Scaffold(
        appBar: AppBar(
            title: Text('Flutter demo')
        ),
        body: ListView(
          children: <Widget>[
            Layout(),
            TapboxA(),
            ParentWidgetB(),
            ParentWidgetC(),
            FormWidget(),
            FirstRoute(),
          ],
        )
      ),
    );
  }
}

