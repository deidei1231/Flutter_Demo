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
    // 宽度为容器的宽度，高度为容器的一般
    return ListView(
      children: const [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          margin: EdgeInsets.all(10),
          elevation: 10,
          child: Column(
            children: [
              ListTile(
                title: Text("张三", style: TextStyle(fontSize: 28),),
                subtitle: Text("高级软件工程师"),
              ),
              ListTile(
                title: Text("电话：8888"),
                subtitle: Text("地址：蓝光科技园"),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),

          elevation: 10,
          child: Column(
            children: [
              ListTile(
                title: Text("张三", style: TextStyle(fontSize: 28),),
                subtitle: Text("高级软件工程师"),
              ),
              ListTile(
                title: Text("电话：8888"),
                subtitle: Text("地址：蓝光科技园"),
              )
            ],
          ),
        ),
      ],
    );
  }
}
