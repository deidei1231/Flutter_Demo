import 'package:demo/pages/tabs.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const Tabs(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ));
  }
}

