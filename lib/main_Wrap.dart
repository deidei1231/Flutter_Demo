import 'package:demo/res/listData.dart';
import 'package:flutter/cupertino.dart';
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
    // 超出换行
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Wrap(
          spacing: 5, // 水平间距
          runSpacing: 10, // 垂直间距
          // direction: Axis.horizontal, // 显示方向  
          children: [
            Button("第一集", onPress: () {}),
            Button("第一集", onPress: () {}),
            Button("第一集", onPress: () {}),
            Button("第一集", onPress: () {}),
            Button("第一集", onPress: () {}),
            Button("第一集", onPress: () {}),
            Button("第一集", onPress: () {}),
            Button("第一集", onPress: () {}),
            Button("第一集", onPress: () {}),
            Button("第一集", onPress: () {}),
            Button("第一集", onPress: () {}),
          ],
        ));
  }
}

// 自定义按钮组件
class Button extends StatelessWidget {
  String text;
  void Function() onPress;

  Button(this.text, {super.key, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              WidgetStateProperty.all(const Color.fromARGB(255, 120, 115, 115)),
          foregroundColor: WidgetStateProperty.all(Colors.white),
        ),
        onPressed: onPress,
        child: Text(text));
  }
}
