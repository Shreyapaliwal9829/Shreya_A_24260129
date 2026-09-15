import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: SnackPage()));

class SnackPage extends StatelessWidget {
  const SnackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q5 - SnackBar')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Button pressed successfully!')),
            );
          },
          child: const Text('Show Message'),
        ),
      ),
    );
  }
}
