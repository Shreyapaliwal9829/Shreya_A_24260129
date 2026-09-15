import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: TextChangePage()));

class TextChangePage extends StatefulWidget {
  const TextChangePage({super.key});

  @override
  State<TextChangePage> createState() => _TextChangePageState();
}

class _TextChangePageState extends State<TextChangePage> {
  String text = 'Hello Flutter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q4 - Change Text')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text, style: const TextStyle(fontSize: 25)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => setState(() => text = 'Text Changed!'),
              child: const Text('Change Text'),
            ),
          ],
        ),
      ),
    );
  }
}
