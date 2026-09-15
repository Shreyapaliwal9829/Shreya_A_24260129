import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: HelloFlutter()));
}

class HelloFlutter extends StatelessWidget {
  const HelloFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hello Flutter")),
      body: const Center(
        child: Text("Hello Flutter", style: TextStyle(fontSize: 28)),
      ),
    );
  }
}