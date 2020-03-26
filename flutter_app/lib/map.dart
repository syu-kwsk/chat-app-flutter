import 'package:flutter/material.dart';
import 'package:easy_dialog/easy_dialog.dart';

class MyMap extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      child: Image.asset(
        'images/campas_map.jpg',
        fit: BoxFit.cover,

      ),
    );
  }
}

class MyDialog extends StatefulWidget {
  MyDialog({Key key, this.title, this.desc, this.icon}) : super(key: key);

  final String title;
  final String desc;
  final IconData icon;

  @override
  _MyDialogState createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {

  void _basicEasyDialog() {
    EasyDialog(
        title: Text(
          widget.title,
          style: TextStyle(fontWeight: FontWeight.bold),
          textScaleFactor: 1.5,
        ),
        description: Text(
          widget.desc,
          textScaleFactor: 1.2,
          textAlign: TextAlign.center,
        )).show(context);
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: _basicEasyDialog,
        child: Icon(
            widget.icon
        )
    );
  }
}