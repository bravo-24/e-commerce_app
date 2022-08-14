import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'Tabs/home_tab.dart';
import 'Tabs/notification_tab.dart';
import 'Tabs/search_tab.dart';
import 'Tabs/user_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeTab(),
    SearchTab(),
    NotificationTab(),
    UserTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        iconSize: 24,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xffFF4343),
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.search_normal_1),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.notification),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.user),
            label: '',
          ),
        ],
      ),
    );
  }
}
