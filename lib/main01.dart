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
            appBar: AppBar(title: const Text("My First App")),
            body: const MyHomePage()));
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.center,
      width: 200,
      height: 40,
      margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: const Text(
        "你好",
        style: TextStyle(color: Colors.white),
        textAlign: TextAlign.justify,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        decoration: const BoxDecoration(
          color: Colors.yellow,
        ),
        child: Image.network(
          "https://pic2.zhimg.com/v2-c893bea5615b8564f7483159bf01cfbf_xs.jpg?source=172ae18b",
          // fit: BoxFit.cover,
          // alignment: Alignment.centerLeft,
          // repeat: ImageRepeat.repeatX,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

// 圆形图片
class CircularImage extends StatelessWidget {
  const CircularImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: const BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.all(Radius.circular(75)),
          image: DecorationImage(
              image: NetworkImage(
                  "https://pic2.zhimg.com/v2-c893bea5615b8564f7483159bf01cfbf_xs.jpg?source=172ae18b"),
              fit: BoxFit.cover)),
    );
  }
}

// 用ClipOval实现圆角图片
class ClipOvalImage extends StatelessWidget {
  const ClipOvalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
        child: Image.network(
      "https://pic2.zhimg.com/v2-c893bea5615b8564f7483159bf01cfbf_xs.jpg?source=172ae18b",
      width: 150,
      height: 150,
      fit: BoxFit.cover,
    ));
  }
}

// 用ClipOval加载本地图片
class LocalImage extends StatelessWidget {
  const LocalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
        child: Image.asset(
      "images/boy_avatar.png",
      width: 150,
      height: 150,
      fit: BoxFit.cover,
    ));
  }
}

// ListView 垂直列表
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
          leading: Image.asset("images/boy_avatar.png"),
          title: const Text('today is a sun day.'),
          subtitle: const Text('OK.'),
          trailing: const Icon(Icons.add_a_photo),
        ),
        const Divider(),
        ListTile(
          leading: Image.asset("images/boy_avatar.png"),
          title: const Text('today is a sun day.'),
          subtitle: const Text('OK.'),
          trailing: const Icon(Icons.add_a_photo),
        ),
        const Divider(),
        ListTile(
          leading: Image.asset("images/boy_avatar.png"),
          title: const Text('today is a sun day.'),
          subtitle: const Text('OK.'),
          trailing: const Icon(Icons.add_a_photo),
        ),
        const Divider(),
        ListTile(
          leading: Image.asset("images/boy_avatar.png"),
          title: const Text('today is a sun day.'),
          subtitle: const Text('OK.'),
          trailing: const Icon(Icons.add_a_photo),
        ),
        const Divider(),
      ],
    );
  }
}
