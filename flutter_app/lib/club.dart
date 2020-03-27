import 'package:flutter/material.dart';

class MyClub extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ClubDetail(
          title: 'Programming Club',
          member: 21,
          place: 'Room C216',
          time: 'Everyday 16:00 ~',
          imageUrl: 'https://programming-study.com/wp-content/uploads/2017/05/shutterstock_329205053.jpg',),
        ClubDetail(
          title: 'Soccer Club',
          member: 11,
          place: 'first-ground',
          time: 'Wed & Fri 15:00 ~',
          imageUrl: 'https://mtrl.tokyo/wp-content/uploads/2018/04/HUMAN_6.jpg',),
        ClubDetail(
          title: 'Baseball Team',
          member: 106,
          place: 'Baseball Ground',
          time: 'Mon, Wen, Sat, Sun 13:00 ~ 21:00',
          imageUrl: 'https://sites.google.com/site/hokudai2013dolphins/_/rsrc/1505987382955/home/%E5%8A%B9%E3%81%8D%E3%81%84%E3%81%84.png',),
        ClubDetail(
          title: 'Jazz Club',
          member: 31,
          place: 'Music Studio',
          time: 'Sunday afternoon',
          imageUrl: 'https://www.kochi-tech.ac.jp/campus_life/activities/files/0214s1_m.jpg',),
      ],
    );
  }
}


class ClubDetail extends StatelessWidget {

  ClubDetail({Key key, this.imageUrl, this.member, this.place, this.time, this.title}) : super(key: key);

  final String imageUrl;
  final int member;
  final String place;
  final String time;
  final String title;

  @override
  Widget build(BuildContext context) {

    Widget titleSection = Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            FavoriteWidget(),
          ],
        )
    );

    Color color = Theme.of(context).primaryColor;
    Widget dataSection = Container(
        padding: const EdgeInsets.only(right: 32, left: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
                children: <Widget>[
                  _buildIcon(color, Icons.people),
                  _buildIcon(color, Icons.place),
                  _buildIcon(color, Icons.access_time)
                ]
            ),
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 13, bottom: 13),
                      child: Text(
                        member.toString()+' people',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 13, bottom: 13),
                      child: Text(
                        place,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 13, bottom: 13),
                      child: Text(
                        time,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
            )
          ],
        )

    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );

    return  Column(
      children: <Widget>[
        Image.network(
          imageUrl,
          width: 600,
          height: 240,
          fit: BoxFit.cover,
        ),
        titleSection,
        dataSection,
        textSection,

      ],
    );
  }

  Container _buildIcon(Color color, IconData icon) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Icon(icon, color: color),
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
            padding: EdgeInsets.all(0),
            child: IconButton(
              icon: (_isFavorited ? Icon(Icons.bookmark) : Icon(Icons.bookmark_border)),
              color: Colors.yellow,
              iconSize: 35,
              onPressed: _toggleFavorite,
            )
        ),
      ],
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
      } else {
        _isFavorited = true;
      }
    });
  }
}