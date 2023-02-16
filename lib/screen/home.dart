import 'package:flutter/material.dart';
import 'package:trading/screen/home_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _pageController = PageController();

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  var items = [
    BottomNavigationBarItem(
        icon: Image.asset('assets/icons/home.png',
            color: const Color(0xff8DA4C9), width: 26),
        label: 'Home'),
    BottomNavigationBarItem(
        icon: Image.asset('assets/icons/watch.png', width: 26),
        label: 'Categories'),
    BottomNavigationBarItem(
        icon: Image.asset('assets/icons/comment.png', width: 26),
        label: 'News'),
    BottomNavigationBarItem(
        icon: Image.asset('assets/icons/group.png', width: 26),
        label: 'Account'),
    BottomNavigationBarItem(
        icon: Image.asset('assets/icons/setting.png', width: 26),
        label: 'Account'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: const <Widget>[
          HomePage(),
          Icon(
            Icons.message,
            size: 150,
          ),
          Icon(
            Icons.notifications,
            size: 150,
          ),
          Icon(
            Icons.settings,
            size: 150,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}
