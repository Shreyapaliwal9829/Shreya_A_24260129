import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: TextStylesDemo()));
}

class TextStylesDemo extends StatelessWidget {
  const TextStylesDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Text Styles")),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Bold Text", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text("Italic Text", style: TextStyle(fontSize: 22, fontStyle: FontStyle.italic)),
            Text("Large Text", style: TextStyle(fontSize: 32)),
            Text("Centered Text", textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}