

import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter_migrow/Screens/chat.dart';
import 'package:flutter_migrow/Screens/home.dart';
import 'package:flutter_migrow/Screens/login.dart';
import 'package:flutter_migrow/Screens/profile.dart';
import 'package:flutter_migrow/Screens/register.dart';
import 'package:flutter_migrow/Screens/splash_screen.dart';
import 'package:hexcolor/hexcolor.dart';

class BottomNav extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyColor {
  const _MyColor(this.color, this.name);

  final Color color;
  final String name;
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _page = 0;
  int _currentIndex = 0;

 
  int _selectedIndex = 0;
  // ignore: unused_field
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

      // GlobalKey<> _bottomNavigationKey = GlobalKey();

  static List<Widget> Screens = [
    const DashboardMenu(),
    const ChatPage(),
    
    ProfilePage(),
  ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void logout(BuildContext context) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Screens.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            inactiveColor: HexColor('CACACA'),
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: HexColor('E98C23'),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            inactiveColor: HexColor('CACACA'),
            icon: Icon(Icons.message),
            title: Text('Chat'),
            activeColor: HexColor('E98C23'),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            inactiveColor: HexColor('CACACA'),
            icon: Icon(Icons.person),
            title: Text(
              'Profile',
            ),
            activeColor: HexColor('E98C23'),
            textAlign: TextAlign.center,
          ),
          
        ],
      ),
    );
  }
}
