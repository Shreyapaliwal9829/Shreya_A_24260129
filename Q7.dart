import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: FirstScreen()));
class FirstScreen extends StatelessWidget {
  @override Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('First Screen')),
    body: Center(child: ElevatedButton(
      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => SecondScreen())),
      child: Text('Open Second'),
    )),
  );
}
class SecondScreen extends StatelessWidget {
  @override Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Second Screen')),
    body: Center(child: ElevatedButton(
      onPressed: () => Navigator.pop(context), child: Text('Return to First'),
    )),
  );
}