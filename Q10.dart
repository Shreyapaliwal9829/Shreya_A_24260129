import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: MainScreen()));
class MainScreen extends StatefulWidget { @override State<MainScreen> createState() => _MainScreenState(); }
class _MainScreenState extends State<MainScreen> {
  int index = 0;
  final screens = [
    Center(child: Text('Screen 1: Home')),
    Center(child: Text('Screen 2: Courses')),
    Center(child: Text('Screen 3: Contact'))
  ];
  @override Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Three Screens')),
    body: screens[index],
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: index,
      onTap: (i) => setState(() => index = i),
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Courses'),
        BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: 'Contact'),
      ],
    ),
  );
}