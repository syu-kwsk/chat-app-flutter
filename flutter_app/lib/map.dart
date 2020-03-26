import 'package:flutter/material.dart';
import 'package:easy_dialog/easy_dialog.dart';

class MyMap extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget> [
        Container(
          constraints: BoxConstraints.expand(),
          child: Image.asset(
            'images/campas_map.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 310.0,
          left: 250.0,
          child: MyDialog(title: 'Programming Club', desc: 'Our circle start in 16:00.\nLet\'s code together!', icon: Icons.room, color: Colors.blue,),
        ),
        Positioned(
          top: 240.0,
          left: 220.0,
          child: MyDialog(title: 'BBQ with PG Club', desc: 'Hey, guys!.\nWe will hold BBQ party\nIt\'s starts 18:00!!', icon: Icons.event, color: Colors.blue,),
        ),
        Positioned(
          top: 350.0,
          left: 180.0,
          child: MyDialog(title: 'Soccer Club', desc: 'Let\'s play soccer!\nWe want super rookie. Common!', icon: Icons.room, color: Colors.amberAccent,),
        ),
        Positioned(
          top: 390.0,
          left: 50.0,
          child: MyDialog(title: 'BaseBall Club', desc: 'Today\'s club activities are closed.\n Sorry,,', icon: Icons.room, color: Colors.green,),
        ),
        Positioned(
          top: 160.0,
          left: 180.0,
          child: MyDialog(title: 'Jazz Welcome Party', desc: 'Today\'s party we play many songs.\nParty will start at 2 PM. \nDon\'t miss it!!', icon: Icons.event, color: Colors.purpleAccent,),
        ),
      ],
    );
  }
}

class MyDialog extends StatefulWidget {
  MyDialog({Key key, this.title, this.desc, this.icon, this.color}) : super(key: key);

  final String title;
  final String desc;
  final IconData icon;
  final Color color;

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
          widget.icon,
          color: widget.color,
          size: 50.0,
        )
    );
  }
}