import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: HomeScreen()));
class HomeScreen extends StatelessWidget {
  @override Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Home')),
    body: Center(child: ElevatedButton(
      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => AboutScreen())),
      child: Text('About'),
    )),
  );
}
class AboutScreen extends StatelessWidget {
  @override Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('About')),
    body: Center(child: ElevatedButton(
      onPressed: () => Navigator.pop(context), child: Text('Back'),
    )),
  );
}