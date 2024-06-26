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
    // return Container(
    //     width: 400,
    //     height: 700,
    //     decoration: const BoxDecoration(color: Colors.red),
    //     child: Row(
    //       // 横轴与纵轴
    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       children: [
    //         IconContainer(Icons.home, color: Colors.blue),
    //         IconContainer(Icons.home, color: Colors.green)
    //       ],
    //     ));
    return Flex(
      // 横轴与纵轴
      direction: Axis.horizontal,
      // direction: Axis.vertical,
      children: [
        Expanded(
          flex: 1,
          child: IconContainer(Icons.home, color: Colors.blue),
        ),
        Expanded(
          flex: 2,
          child: IconContainer(Icons.home, color: Colors.green),
        )
      ],
    );
  }
}

// 自定义IconContainer
class IconContainer extends StatelessWidget {
  Color color;
  IconData icon;

  // color为命名参数
  IconContainer(this.icon, {super.key, this.color = Colors.red});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 100.0,
      height: 100.0,
      color: color,
      child: Icon(icon, color: Colors.yellow, size: 28),
    );
  }
}
