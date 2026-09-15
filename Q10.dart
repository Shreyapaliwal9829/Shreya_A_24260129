import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: NumberTypePage()));

class NumberTypePage extends StatefulWidget {
  const NumberTypePage({super.key});

  @override
  State<NumberTypePage> createState() => _NumberTypePageState();
}

class _NumberTypePageState extends State<NumberTypePage> {
  final number = TextEditingController();
  String result = '';

  void check() {
    double n = double.tryParse(number.text) ?? 0;
    if (n > 0) {
      setState(() => result = 'Positive Number');
    } else if (n < 0) {
      setState(() => result = 'Negative Number');
    } else {
      setState(() => result = 'Zero');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q10 - Number Type')),
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
