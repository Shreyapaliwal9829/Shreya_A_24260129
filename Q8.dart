import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: PercentagePage()));

class PercentagePage extends StatefulWidget {
  const PercentagePage({super.key});

  @override
  State<PercentagePage> createState() => _PercentagePageState();
}

class _PercentagePageState extends State<PercentagePage> {
  final m1 = TextEditingController();
  final m2 = TextEditingController();
  final m3 = TextEditingController();
  String result = '';

  void calculate() {
    double a = double.tryParse(m1.text) ?? 0;
    double b = double.tryParse(m2.text) ?? 0;
    double c = double.tryParse(m3.text) ?? 0;
    double percentage = (a + b + c) / 3;
    setState(() => result = 'Percentage = ${percentage.toStringAsFixed(2)}%');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q8 - Percentage')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: m1, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Subject 1 marks')),
            TextField(controller: m2, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Subject 2 marks')),
            TextField(controller: m3, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Subject 3 marks')),
            const SizedBox(height: 15),
            ElevatedButton(onPressed: calculate, child: const Text('Calculate Percentage')),
            Text(result, style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
