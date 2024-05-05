import 'package:flutter/material.dart';

import '../../constants/Appcolors.dart';
class BBottom extends StatefulWidget {
  const BBottom({super.key});

  @override
  State<BBottom> createState() => _BBottomState();
}

class _BBottomState extends State<BBottom> {
  int _selectedIndex = 0;


  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.orange);

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Account',
      style: optionStyle,
    ),
    Text(
      'Saved',
      style: optionStyle,
    ),
    Text(
      'Settings',
      style: optionStyle,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
    backgroundColor: AppColors.primary,// Set bottom navigation bar color to blue
    items: <BottomNavigationBarItem>[
    BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: 'Home',
    backgroundColor: AppColors.primary, // Set background color for icon
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.account_circle),
    label: 'Account',
    backgroundColor: AppColors.primary, // Set background color for icon
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.bookmark),
    label: 'Saved',
    backgroundColor: AppColors.primary, // Set background color for icon
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.settings),
    label: 'Settings',
    backgroundColor: AppColors.primary, // Set background color for icon
    ),
    ],
    currentIndex: _selectedIndex,
    selectedItemColor: Colors.white, // Set color of selected item text and icon
    unselectedItemColor: Colors.grey, // Set color of unselected item text and icon
    onTap: _onItemTapped,
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
