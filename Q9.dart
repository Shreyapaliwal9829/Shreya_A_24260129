import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: MainScreen()));
class MainScreen extends StatefulWidget { @override State<MainScreen> createState() => _MainScreenState(); }
class _MainScreenState extends State<MainScreen> {
  int index = 0;
  final screens = [Center(child: Text('Home Screen')), Center(child: Text('Profile Screen')), Center(child: Text('Settings Screen'))];
  @override Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Bottom Navigation')),
    body: screens[index],
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: index,
      onTap: (i) => setState(() => index = i),
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
      ],
    ),
  );
}