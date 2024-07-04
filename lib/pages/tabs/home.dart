import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../search.dart';
import '../news.dart';
import '../form.dart';
import '../shop.dart';
import '../tabs.dart';

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
          // ElevatedButton(
          //     onPressed: () {
          //       Navigator.of(context)
          //           .push(MaterialPageRoute(builder: (BuildContext context) {
          //         return const SearchPage();
          //       }));
          //     },
          //     child: const Text("基本路由跳转，需要引入组件")),
          // const SizedBox(height: 20),
          // ElevatedButton(
          //     onPressed: () {
          //       Navigator.pushNamed(context, "/news");
          //     },
          //     child: const Text("命名路由跳转")),
          // const SizedBox(height: 20),
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.pushNamed(context, "/form", arguments: {
          //       "title": "我是命名路由传值",
          //     });
          //   },
          //   child: const Text("命名路由传值"),
          // ),
          ElevatedButton(
            onPressed: () {
              // Navigator.pushNamed(context, "/shop", arguments: {
              //   "title": "shop传值",
              // });
              // // 正常跳转
              // Navigator.of(context).pushNamed("/shop");
              // // 替换跳转
              // Navigator.of(context).pushReplacementNamed("/shop");
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (BuildContext context){
                  return const Tabs(index: 1);
                }), (router) => false
              );
            },
            child: const Text("命名路由传值→shop"),
          ),
          const SizedBox(height: 30),
          ElevatedButton(onPressed: () {
            // Navigator.of(context).pushNamed("/dialog");
            Get.toNamed("/dialog");
          }, child: const Text('Dialog演示')),
          // const SizedBox(height: 30),
          // ElevatedButton(onPressed: () {
          //   Navigator.of(context).pushNamed("/pageView");
          // }, child: const Text('PageViewPage演示')),
          const SizedBox(height: 30),
          ElevatedButton(onPressed: () {
            Navigator.of(context).pushNamed("/pageViewBuilder");
          }, child: const Text('PageViewPageBuilder演示')),
          ElevatedButton(onPressed: () {
            Navigator.of(context).pushNamed("/pageViewFullBuilder");
          }, child: const Text('无限滚动演示')),
          ElevatedButton(onPressed: () {
            Navigator.of(context).pushNamed("/pageViewSwiper");
          }, child: const Text('轮播图演示')),
        ],
      ),
    );
  }
}
