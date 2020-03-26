import 'package:flutter/material.dart';

class MyMap extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      child: Image.asset(
        'images/campas_map.jpg',
        width: 600,
        height: 240,
        fit: BoxFit.cover,

      ),
    );

  }

}