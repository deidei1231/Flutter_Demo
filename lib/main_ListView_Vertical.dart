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
            appBar: AppBar(title: const Text("My Demo App")),
            body: const MyHomePage()));
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Image.asset("images/boy_avatar.png", fit: BoxFit.cover,),
        Container(
          padding: const EdgeInsets.all(10),
          height: 44,
          child:  const Text("我是一个标题",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.red),),
        ),
        Image.asset("images/boy_avatar.png", fit: BoxFit.cover,),
        Container(
          padding: const EdgeInsets.all(10),
          height: 44,
          child:  const Text("我是一个标题",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.red),),
        ),
        Image.asset("images/boy_avatar.png", fit: BoxFit.cover,),
        Image.asset("images/boy_avatar.png", fit: BoxFit.cover,),
        Image.asset("images/boy_avatar.png", fit: BoxFit.cover,),
        Image.asset("images/boy_avatar.png", fit: BoxFit.cover,),
      ],
    );
  }
}
