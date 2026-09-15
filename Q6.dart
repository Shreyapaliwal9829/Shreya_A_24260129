import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: HomeScreen()));
class HomeScreen extends StatelessWidget {
  @override Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Navigator.push')),
    body: Center(child: ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => NewScreen()));
      },
      child: Text('Open New Screen'),
    )),
  );
}
class NewScreen extends StatelessWidget {
  @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: Text('New Screen')), body: Center(child: Text('Opened using Navigator.push()')));
}