import 'package:flutter/material.dart';

class PageViewPage extends StatefulWidget {
  const PageViewPage({super.key});

  @override
  State<PageViewPage> createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("pageView"),
      ),
      body: PageView(
        // 默认为false，表示只能左右滑动，不能上下滑动
        // scrollDirection: Axis.vertical,
        scrollDirection: Axis.horizontal,
        children: [
          Center(
            child: Text("1", style: Theme.of(context).textTheme.headlineMedium),
          ),
          Center(
            child: Text("2", style: Theme.of(context).textTheme.headlineMedium),
          ),
          Center(
            child: Text("3", style: Theme.of(context).textTheme.headlineMedium),
          ),
          Center(
            child: Text("4", style: Theme.of(context).textTheme.headlineMedium),
          ),
          Center(
            child: Text("5", style: Theme.of(context).textTheme.headlineMedium),
          ),
          Center(
            child: Text("6", style: Theme.of(context).textTheme.headlineMedium),
          )
        ],
      ),
    );
  }
}
