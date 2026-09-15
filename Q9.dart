import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: ColumnDemo()));
}

class ColumnDemo extends StatelessWidget {
  const ColumnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Column Widget")),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name", style: TextStyle(fontSize: 22)),
            Text("Course", style: TextStyle(fontSize: 22)),
            Text("Semester", style: TextStyle(fontSize: 22)),
          ],
        ),
      ),
    );
  }
}