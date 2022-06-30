import 'package:flutter/material.dart';

void main() {
  runApp(Latihan());
}

class Latihan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hallo"),
        ),
        body: const Center(
          child: Text("Belajar"),
        ),
      ),
    );
  }
}
