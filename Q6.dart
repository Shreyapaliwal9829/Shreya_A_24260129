import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MixedWidgets()));
}

class MixedWidgets extends StatelessWidget {
  const MixedWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Text Image Icon")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Flutter Widgets", style: TextStyle(fontSize: 26)),
            const SizedBox(height: 15),
            Image.network(
              "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
              width: 180,
              height: 180,
            ),
            const SizedBox(height: 15),
            const Icon(Icons.flutter_dash, size: 55),
          ],
        ),
      ),
    );
  }
}