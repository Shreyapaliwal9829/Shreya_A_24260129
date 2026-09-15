import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Q1 - Student Name')),
        body: const NamePage(),
      ),
    );
  }
}

class NamePage extends StatefulWidget {
  const NamePage({super.key});

  @override
  State<NamePage> createState() => _NamePageState();
}

class _NamePageState extends State<NamePage> {
  final nameController = TextEditingController();
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration(labelText: 'Enter student name'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => setState(() => name = nameController.text),
            child: const Text('Display Name'),
          ),
          const SizedBox(height: 20),
          Text('Student Name: $name', style: const TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
