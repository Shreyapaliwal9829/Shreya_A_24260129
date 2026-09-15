import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: FormPage()));

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final name = TextEditingController();
  String message = '';

  void submit() {
    setState(() => message = 'Submitted: ${name.text}');
  }

  void reset() {
    name.clear();
    setState(() => message = '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q6 - Simple Form')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: name, decoration: const InputDecoration(labelText: 'Enter name')),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: submit, child: const Text('Submit')),
                const SizedBox(width: 15),
                ElevatedButton(onPressed: reset, child: const Text('Reset')),
              ],
            ),
            const SizedBox(height: 20),
            Text(message, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
