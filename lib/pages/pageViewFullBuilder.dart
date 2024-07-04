import 'package:flutter/material.dart';

class PageViewFullBuilderPage extends StatefulWidget {
  const PageViewFullBuilderPage({super.key});

  @override
  State<PageViewFullBuilderPage> createState() =>
      _PageViewFullBuilderPagePageState();
}

class _PageViewFullBuilderPagePageState extends State<PageViewFullBuilderPage> {
  List<Widget> list = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (var i = 0; i < 10; i++) {
      list.add(Container(
          color: Colors.primaries[i % Colors.primaries.length],
          child: Center(child: Text("第${i + 1}屏"))));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("无限滚动"),
        ),
        body: PageView(
          scrollDirection: Axis.vertical,
          onPageChanged: (index){
            print("${index}");
            if(index+2 == list.length){
              setState(() {
                list.add(Container(
                    color: Colors.primaries[index % Colors.primaries.length],
                    child: Center(child: Text("第${index + 1}屏"))));
              });
            }
          },
          children: list,
        ));
  }
}
