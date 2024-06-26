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
    // 获取屏幕宽度
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        ListView(
          padding: const EdgeInsets.only(top: 100),
          children: const [
            ListTile(
              title: Text('我是一个列表'),
            ),
            Divider(),
            ListTile(
              title: Text('我是一个列表'),
            ),
            Divider(),
            ListTile(
              title: Text('我是一个列表'),
            ),
            Divider(),
            ListTile(
              title: Text('我是一个列表'),
            ),
            Divider(),
            ListTile(
              title: Text('我是一个列表'),
            ),
            Divider(),
            ListTile(
              title: Text('我是一个列表'),
            ),
            Divider(),
            ListTile(
              title: Text('我是一个列表'),
            ),
            Divider(),
            ListTile(
              title: Text('我是一个列表'),
            ),
            Divider(),
            ListTile(
              title: Text('我是一个列表'),
            ),
            Divider(),
            ListTile(
              title: Text('我是一个列表'),
            ),
            Divider(),
            ListTile(
              title: Text('我是一个列表'),
            ),
            Divider(),
            ListTile(
              title: Text('我是一个列表'),
            ),
            Divider(),
          ],
        ),
        Positioned(
            left: 0,
            bottom: 0,
            // 没法使用double.infinity
            width: size.width,
            height: 55,
            child: Container(
              alignment: Alignment.center,
              color: Colors.red,
              child:
                  const Text('我是二级导航', style: TextStyle(color: Colors.white)),
            ))
      ],
    );
  }
}
