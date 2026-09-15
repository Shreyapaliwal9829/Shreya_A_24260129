import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: EvenOddPage()));

class EvenOddPage extends StatefulWidget {
  const EvenOddPage({super.key});

  @override
  State<EvenOddPage> createState() => _EvenOddPageState();
}

class _EvenOddPageState extends State<EvenOddPage> {
  final number = TextEditingController();
  String result = '';

  void check() {
    int n = int.tryParse(number.text) ?? 0;
    setState(() => result = n % 2 == 0 ? 'Even Number' : 'Odd Number');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q9 - Even or Odd')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: number, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Enter number')),
            const SizedBox(height: 15),
            ElevatedButton(onPressed: check, child: const Text('Check')),
            Text(result, style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
