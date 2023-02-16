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

  var items = const [
    BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage('assets/icons/home.png'),
          size: 26,
        ),
        label: 'Home'),
    BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage('assets/icons/watch.png'),
          size: 26,
        ),
        label: 'Wathlist'),
    BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage('assets/icons/comment.png'),
          size: 26,
        ),
        label: 'News'),
    BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage('assets/icons/group.png'),
          size: 26,
        ),
        label: 'Account'),
    BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage('assets/icons/setting.png'),
          size: 26,
        ),
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
        selectedItemColor: Color(0xff00ACEC),
        unselectedItemColor: Color(0xff8da4c9),
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}
