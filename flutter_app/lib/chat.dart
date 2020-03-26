import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';

class MyChat extends StatefulWidget {
  MyChat({Key key}) : super(key: key);

  @override
  _MyChatState createState() => _MyChatState();
}

class _MyChatState extends State<MyChat> {
  @override
  Widget build(BuildContext context) {
    double pixelRatio = MediaQuery.of(context).devicePixelRatio;
    double px = 1 / pixelRatio;

    BubbleStyle styleSomebody = BubbleStyle(
      nip: BubbleNip.leftTop,
      color: Colors.white,
      elevation: 1 * px,
      margin: BubbleEdges.only(top: 8.0, right: 50.0),
      alignment: Alignment.topLeft,
    );
    BubbleStyle styleMe = BubbleStyle(
      nip: BubbleNip.rightTop,
      color: Colors.green,
      elevation: 1 * px,
      margin: BubbleEdges.only(top: 8.0, left: 50.0),
      alignment: Alignment.topRight,
    );

    return Container(
      color: Colors.cyan[100],
      child: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          Bubble(
            alignment: Alignment.center,
            color: Colors.lightBlueAccent,
            elevation: 1 * px,
            margin: BubbleEdges.only(top: 8.0),
            child: Text('TODAY', style: TextStyle(fontSize: 10)),
          ),
          Bubble(
            style: styleSomebody,
            child: Text('Hi !! I\'m a leader of Programming Club. Nice to meet you!'),
          ),
          Bubble(
            style: styleMe,
            child: Text('I\'m syu-kwsk. Nice to meet you too.'),
          ),
          Bubble(
            style: styleSomebody,
            child: Text('We will hold BBQ party next monday 5 PM.'),
          ),
          Bubble(
            style: styleSomebody,
            margin: BubbleEdges.only(top: 2.0),
            nip: BubbleNip.no,
            child: Text('Common baby. Dont\'t miss it!'),
          ),
          Bubble(
            style: styleMe,
            child: Text('I see'),
          ),
          Bubble(
            style: styleMe,
            nip: BubbleNip.no,
            margin: BubbleEdges.only(top: 2.0),
            child: Text('I\'m looking forward to seeing you!!'),
          ),
        ],
      ),
    );
  }
}