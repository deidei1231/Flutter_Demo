import 'package:flutter/material.dart';
import './myFonts.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text("My Demo App")),
            body: const MyHomePage()));
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal, // 水平列表
      padding: const EdgeInsets.all(10),
      children: [
        Container(
            width: 220, decoration: const BoxDecoration(color: Colors.red)),
        Container(
            width: 220, decoration: const BoxDecoration(color: Colors.blue)),
        Container(
            width: 220, decoration: const BoxDecoration(color: Colors.pink))
      ],
    );
  }
}
