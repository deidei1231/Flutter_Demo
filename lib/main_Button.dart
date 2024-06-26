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
    // 宽度为容器的宽度，高度为容器的一般
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("普通按钮")),
            TextButton(onPressed: () {}, child: const Text("文本按钮")),
          ],
        ),
        const SizedBox(height: 20),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          OutlinedButton(onPressed: () {}, child: const Text("文本按钮")),
          IconButton(onPressed: () {}, icon: const Icon(Icons.android))
        ]),
        const Divider(),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.home),
                label: const Text("123")),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.home),
                label: const Text("123")),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.home),
                label: const Text("123"))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.red),
                  foregroundColor: WidgetStateProperty.all(Colors.white),
                ),
                child: const Text("123")),
            TextButton(onPressed: () {}, child: const Text("123")),
            OutlinedButton(onPressed: () {}, child: const Text("123"))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 200,
              height: 60,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.red),
                    foregroundColor: WidgetStateProperty.all(Colors.white),
                  ),
                  child: const Text("SOS")),
            ),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          SizedBox(
            width: 200,
            height: 60,
            child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.home),
                label: const Text("123")),
          )
        ]),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: ElevatedButton(onPressed: () {}, child: const Text("123")),
            )
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)))),
                child: const Text("调整圆角")),
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: WidgetStateProperty.all(const CircleBorder(
                      side: BorderSide(width: 10, color: Colors.red))),
                ),
                child: const Text("圆形"))
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            OutlinedButton(
                style: ButtonStyle(
                  side: WidgetStateProperty.all(const BorderSide(width: 1,color: Colors.red))
                ),
                onPressed: () {},
                child: const Text("带边框的按钮"))
          ],
        )
      ],
    );
  }
}
