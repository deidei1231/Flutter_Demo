import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  final String title;

  const NewsPage({super.key, this.title = "新闻"});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
        child: Text('新闻页面'),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.keyboard_return)),
    );
  }
}
