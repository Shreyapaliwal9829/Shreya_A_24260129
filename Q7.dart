import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: TotalPage()));

class TotalPage extends StatefulWidget {
  const TotalPage({super.key});

  @override
  State<TotalPage> createState() => _TotalPageState();
}

class _TotalPageState extends State<TotalPage> {
  final name = TextEditingController();
  final m1 = TextEditingController();
  final m2 = TextEditingController();
  final m3 = TextEditingController();
  String result = '';

  void total() {
    double a = double.tryParse(m1.text) ?? 0;
    double b = double.tryParse(m2.text) ?? 0;
    double c = double.tryParse(m3.text) ?? 0;
    setState(() => result = '${name.text} - Total Marks: ${a + b + c}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q7 - Total Marks')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: name, decoration: const InputDecoration(labelText: 'Student name')),
            TextField(controller: m1, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Subject 1 marks')),
            TextField(controller: m2, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Subject 2 marks')),
            TextField(controller: m3, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Subject 3 marks')),
            const SizedBox(height: 15),
            ElevatedButton(onPressed: total, child: const Text('Calculate Total')),
            Text(result, style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
