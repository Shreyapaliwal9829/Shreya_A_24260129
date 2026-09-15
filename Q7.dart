import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: ContainerDemo()));
}

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Container Widget")),
      body: Center(
        child: Container(
          width: 250,
          height: 150,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 2),
          ),
          child: const Text("Customized Container", style: TextStyle(fontSize: 22)),
        ),
      ),
    );
  }
}