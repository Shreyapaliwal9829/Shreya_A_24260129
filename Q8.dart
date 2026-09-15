import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: RowDemo()));
}

class RowDemo extends StatelessWidget {
  const RowDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Row Widget")),
      body: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Home", style: TextStyle(fontSize: 20)),
            Text("About", style: TextStyle(fontSize: 20)),
            Text("Contact", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}