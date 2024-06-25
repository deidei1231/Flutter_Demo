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

  // return GridView.count(
  //   // 多少列
  //     crossAxisCount: 3,
  //     children: [
  //       Container(
  //         color: Colors.red,
  //       ),
  //       Container(
  //         color: Colors.blue,
  //       ),
  //       Container(
  //         color: Colors.pink,
  //       ),
  //       Container(
  //         color: Colors.yellow,
  //       ),
  //       Container(
  //         color: Colors.green,
  //       ),
  //       Container(
  //         color: Colors.purple,
  //       ),
  //       Container(
  //         color: Colors.orange,
  //       )
  //     ]);

  // return GridView.extent(
  //   // 横轴子元素的最大长度
  //   maxCrossAxisExtent: 120.0,
  //   children: [
  //     Container(
  //       color: Colors.red,
  //     ),
  //     Container(
  //       color: Colors.blue,
  //     ),
  //     Container(
  //       color: Colors.pink,
  //     ),
  //     Container(
  //       color: Colors.yellow,
  //     ),
  //     Container(
  //       color: Colors.green,
  //     ),
  //     Container(
  //       color: Colors.purple,
  //     ),
  //     Container(
  //       color: Colors.orange,
  //     )
  //   ],
  // );
  Widget _initGridViewData(context, index) {
    return Container(
      color: Colors.primaries[index % Colors.primaries.length],
      child: Text(listData[index]["chat_id"]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: listData.length,
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: _initGridViewData);
  }
}
