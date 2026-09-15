import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: ButtonsDemo()));
}

class ButtonsDemo extends StatelessWidget {
  const ButtonsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Buttons")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("Submit"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Reset"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Cancel"),
            ),
          ],
        ),
      ),
    );
  }
}