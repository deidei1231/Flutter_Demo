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
    // return Stack(
    //   alignment: Alignment.center,
    //   children: [
    //     Container(
    //       width: 300,
    //       height: 400,
    //       color: Colors.yellow,
    //     ),
    //     Container(
    //       width: 200,
    //       height: 100,
    //       color: Colors.red,
    //     ),
    //     const Text("nihao")
    //   ],
    // );

    return Container(
        width: 400,
        height: 500,
        color: Colors.blue,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              bottom: 20,
              child: Container(
                width: 200,
                height: 100,
                color: Colors.red,
              ),
            ),
            const Positioned(right: 0, top: 30, child: Text("nihao"))
          ],
        ));
  }
}
