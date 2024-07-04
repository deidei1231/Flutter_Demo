import 'dart:async';

import 'package:flutter/material.dart';
import '../widget/swiper.dart';

class PageViewSwiperPage extends StatefulWidget {
  const PageViewSwiperPage({super.key});

  @override
  State<PageViewSwiperPage> createState() => _PageViewSwiperPageState();
}

class _PageViewSwiperPageState extends State<PageViewSwiperPage> {
  List<String> list = [];
  int _currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (var i = 0; i < 3; i++) {
      list.add("https://www.itying.com/images/flutter/1.png");
    }
    Timer t = Timer.periodic(const Duration(seconds: 3), (timer) {
      setState(() {
        _currentIndex++;
      });
      // timer.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("轮播图"),
        ),
        body: Swiper(list: list));
  }
}
