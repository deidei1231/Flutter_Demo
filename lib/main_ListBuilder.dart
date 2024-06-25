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
            body: MyHomePage()));
  }
}

class MyHomePage extends StatelessWidget {
  List<String> list = [];

  MyHomePage({super.key}) {
    for (var i = 0; i < 20; i++) {
      list.add("我是第$i条数据");
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(list[index]),
          );
        });
  }
}
