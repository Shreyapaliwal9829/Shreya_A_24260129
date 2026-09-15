import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: StudentInfo()));
}

class StudentInfo extends StatelessWidget {
  const StudentInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Student Information")),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name: Shreya Paliwal", style: TextStyle(fontSize: 22)),
            Text("Course: BCA", style: TextStyle(fontSize: 22)),
            Text("Semester: 4th Semester", style: TextStyle(fontSize: 22)),
            Text("College: COER University", style: TextStyle(fontSize: 22)),
          ],
        ),
      ),
    );
  }
}