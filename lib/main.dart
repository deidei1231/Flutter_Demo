import 'package:demo/pages/news.dart';
import 'package:demo/pages/search.dart';
import 'package:demo/pages/tabs.dart';
import 'package:flutter/material.dart';
import './routers/routers.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
            centerTitle: true
          )
        ),
        // home: const Tabs(),
        initialRoute: "/",

        // 配置onGenerateRoute 固定写法
        onGenerateRoute: onGenerateRoute
    );
  }
}
