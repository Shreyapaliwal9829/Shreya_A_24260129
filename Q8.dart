import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: HomeScreen()));
class HomeScreen extends StatelessWidget {
  @override Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Home')),
    body: Center(child: ElevatedButton(
      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => DetailScreen())),
      child: Text('View Details'),
    )),
  );
}
class DetailScreen extends StatelessWidget {
  @override Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Details')),
    body: Center(child: ElevatedButton(
      onPressed: () => Navigator.pop(context), child: Text('Back to Home'),
    )),
  );
}