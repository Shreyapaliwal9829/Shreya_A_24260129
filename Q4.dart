import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: LoginScreen()));
class LoginScreen extends StatelessWidget {
  @override Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Login')),
    body: Center(child: ElevatedButton(
      onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen())),
      child: Text('Login'),
    )),
  );
}
class HomeScreen extends StatelessWidget {
  @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: Text('Home')), body: Center(child: Text('Login Successful')));
}