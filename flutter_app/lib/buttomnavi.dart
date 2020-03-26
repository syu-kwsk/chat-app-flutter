import 'package:flutter/material.dart';
import 'package:flutter_app/layout.dart';
import 'package:flutter_app/tapbutton.dart';
import 'package:flutter_app/interactive.dart';


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
          new TapboxA(),
          new Layout(),
          new ParentWidgetB(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            title: Text('EventMap'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            title: Text('ClubDetail'),
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