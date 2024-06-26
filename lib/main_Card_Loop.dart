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

  List<Widget> _initCardData() {
    var tempList = listData.map((value) {
      return Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        elevation: 10,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(value["img_url"], fit: BoxFit.cover),
            ),
            ListTile(
              leading: ClipOval(
                child: Image.network(
                  value["img_url"],
                  fit: BoxFit.cover,
                  width: 40,
                  height: 40,
                ),
              ),
              title: Text(
                value["chat_id"],
                style: const TextStyle(fontSize: 28),
              ),
              subtitle: Text(value["chat_id"]),
            ),
          ],
        ),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    // 宽度为容器的宽度，高度为容器的一般
    return ListView(
      children: _initCardData(),
    );
  }
}
