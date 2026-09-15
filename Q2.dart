import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: SumPage()));

class SumPage extends StatefulWidget {
  const SumPage({super.key});

  @override
  State<SumPage> createState() => _SumPageState();
}

class _SumPageState extends State<SumPage> {
  final a = TextEditingController();
  final b = TextEditingController();
  String result = '';

  void calculate() {
    double x = double.tryParse(a.text) ?? 0;
    double y = double.tryParse(b.text) ?? 0;
    setState(() => result = 'Sum = ${x + y}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q2 - Sum')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: a, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'First number')),
            TextField(controller: b, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Second number')),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: calculate, child: const Text('Calculate Sum')),
            Text(result, style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
