import 'package:flutter/material.dart';

class FirstRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Center(
        child: RaisedButton(
          child: Text('Open route'),
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            }
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Center(
        child: RaisedButton(
          child: Text('Back route'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}