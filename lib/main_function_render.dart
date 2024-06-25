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

  List<Widget> _initListData(){
    List<ListTile> list = [];
    for (int i = 0; i < 20; i++) {
      list.add(ListTile(
        title: Text("我是一个标题---$i"),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _initListData()
    );
  }
}
