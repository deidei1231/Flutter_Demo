import 'package:demo/pages/news.dart';
import 'package:demo/pages/search.dart';
import 'package:demo/pages/tabs.dart';
import 'package:flutter/material.dart';
import './pages/form.dart';
import './pages/news.dart';
import './pages/search.dart';

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
      ),
      // home: const Tabs(),
      initialRoute: "/",
      routes: {
        "/": (context) => const Tabs(),
        "/news": (context) => const NewsPage(),
        "/search": (context) => const SearchPage(),
        "/form": (context) => const FormPage(),
      },
    );
  }
}
