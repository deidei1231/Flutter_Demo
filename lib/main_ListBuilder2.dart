import 'package:flutter/material.dart';
import './res/listData.dart';

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
    return ListView.builder(
        itemCount: listData.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(listData[index]["chat_id"]),
          );
        });
  }
}
