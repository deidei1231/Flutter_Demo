import 'package:demo/widget/image.dart';
import 'package:flutter/material.dart';

class Swiper extends StatefulWidget {
  final double width;
  final double height;
  final List<String> list;

  const Swiper(
      {super.key,
      this.width = double.infinity,
      this.height = 200,
      required this.list});

  @override
  State<Swiper> createState() => _SwiperState();
}

class _SwiperState extends State<Swiper> {
  int _currentIndex = 0;
  List<Widget> pageList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (var i = 0; i < widget.list.length; i++) {
      pageList.add(ImagePage(
          width: widget.width, height: widget.height, src: widget.list[i]));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
          height: 200,
          child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index % pageList.length;
                });
              },
              itemCount: 1000,
              itemBuilder: (context, index) {
                return pageList[index % pageList.length];
              })),
      Positioned(
          left: 0,
          right: 0,
          bottom: 5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(pageList.length, (index) {
              // 假设您想生成10个Container
              return Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: _currentIndex == index ? Colors.red : Colors.grey,
                  // 根据当前索引改变颜色
                  borderRadius: BorderRadius.circular(5),
                ),
              );
            }).toList(),
          ))
    ]);
  }
}
