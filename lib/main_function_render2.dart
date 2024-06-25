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
  MyHomePage({super.key}) {
    print(listData);
  }

  List<Widget> _initListData() {
    List<Widget> tempList = [];
    for (int i = 0; i < listData.length; i++) {
      tempList.add(ListTile(
        title: Text(listData[i]["chat_id"]),
      ));
    }
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: _initListData());
  }
}
