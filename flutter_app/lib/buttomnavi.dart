import 'package:flutter/material.dart';
import 'package:flutter_app/map.dart';
import 'package:flutter_app/chat.dart';
import 'package:flutter_app/club.dart';


class TopPage extends StatefulWidget {
  TopPage({Key key}) : super(key: key);

  @override
  _TopPageState createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  PageController _pageController;
  int _page = 0;

  @override
  void initState() {
    super.initState();
    _pageController = new PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  void onTapBottomNavigation(int page) {
    _pageController.animateToPage(
        page,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shinakan Master'),
      ),
      body: new PageView(
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: [
          new MyMap(),
          new MyClub(),
          new MyChat(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            title: Text('CampusMap'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            title: Text('ClubList'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text('Contact'),
          ),
        ],
        currentIndex: _page,
        selectedItemColor: Colors.amber[800],
        onTap: (page) => _pageController.jumpToPage(page),
      ),
    );
  }
}