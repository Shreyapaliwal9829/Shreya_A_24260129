import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: CalculatorPage()));

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final a = TextEditingController();
  final b = TextEditingController();
  String result = '';

  void calculate(String op) {
    double x = double.tryParse(a.text) ?? 0;
    double y = double.tryParse(b.text) ?? 0;
    double r;
    if (op == '+') r = x + y;
    else if (op == '-') r = x - y;
    else if (op == '*') r = x * y;
    else r = y == 0 ? double.nan : x / y;
    setState(() => result = '$x $op $y = $r');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q3 - Calculator')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: a, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'First number')),
            TextField(controller: b, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Second number')),
            const SizedBox(height: 15),
            Wrap(
              spacing: 10,
              children: ['+', '-', '*', '/'].map((op) =>
                ElevatedButton(onPressed: () => calculate(op), child: Text(op))
              ).toList(),
            ),
            const SizedBox(height: 20),
            Text(result, style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
