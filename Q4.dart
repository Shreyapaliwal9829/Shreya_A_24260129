import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: ImageDemo()));
}

class ImageDemo extends StatelessWidget {
  const ImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Image Widget")),
      body: Center(
        child: Image.network(
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
          width: 250,
          height: 250,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}