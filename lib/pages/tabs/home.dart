import 'package:flutter/material.dart';
import '../search.dart';
import '../news.dart';
import '../form.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const SearchPage();
                }));
              },
              child: const Text("基本路由跳转，需要引入组件")),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/news");
              },
              child: const Text("命名路由跳转")),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/form", arguments: {
                "title": "我是命名路由传值",
              });
            },
            child: const Text("命名路由传值"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/shop", arguments: {
                "title": "shop传值",
              });
            },
            child: const Text("命名路由传值→shop"),
          )
        ],
      ),
    );
  }
}
