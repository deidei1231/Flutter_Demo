import 'package:demo/res/listData.dart';
import 'package:flutter/material.dart';

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
    return IconContainer();
  }
}

class IconContainer extends StatelessWidget {
  IconContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 120.0,
      height: 120.0,
      color: Colors.red,
      child: Icon(Icons.android, color: Colors.yellow, size: 28),
    );
  }
}
