import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: HomeScreen()));
class HomeScreen extends StatelessWidget {
  @override Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Home')),
    body: Center(child: ElevatedButton(
      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ProfileScreen())),
      child: Text('Open Profile'),
    )),
  );
}
class ProfileScreen extends StatelessWidget {
  @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: Text('Profile')), body: Center(child: Text('Student Profile')));
}