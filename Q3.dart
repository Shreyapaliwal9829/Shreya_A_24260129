import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: HomeScreen()));
class HomeScreen extends StatelessWidget {
  @override Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Home')),
    body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ProfileScreen())), child: Text('Profile')),
      ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => SettingsScreen())), child: Text('Settings')),
    ]),
  );
}
class ProfileScreen extends StatelessWidget {
  @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: Text('Profile')), body: Center(child: Text('Profile Screen')));
}
class SettingsScreen extends StatelessWidget {
  @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: Text('Settings')), body: Center(child: Text('Settings Screen')));
}