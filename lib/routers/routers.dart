// import 'package:flutter/material.dart';
// import '../pages/dialog.dart';
// import '../pages/pageView.dart';
// import '../pages/pageViewBuilder.dart';
// import '../pages/pageViewFullBuilder.dart';
// import '../pages/pageViewSwiper.dart';
// import '../pages/shop.dart';
// import 'package:demo/pages/tabs.dart';
// // 配置IOS风格
// import 'package:flutter/cupertino.dart';
import 'package:demo/middleware/shopMiddleware.dart';
import 'package:demo/pages/tabs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/dialog.dart';
import '../pages/pageView.dart';
import '../pages/pageViewBuilder.dart';
import '../pages/pageViewFullBuilder.dart';
import '../pages/pageViewSwiper.dart';
import '../pages/shop.dart';

import '../middleware/shopMiddleware.dart';

class AppPage {
  static final routes = [
    GetPage(name: "/", page: ()=> const Tabs()),
    GetPage(name: "/dialog", page: ()=> const DialogPage()),
    GetPage(name: "/pageView", page: ()=> const PageViewPage()),
    GetPage(name: "/pageViewBuilder", page: ()=> const PageViewBuilderPage()),
    GetPage(name: "/pageViewSwiper", page: ()=> const PageViewSwiperPage()),
    GetPage(name: "/pageViewFullBuilder", page: ()=> const PageViewFullBuilderPage()),
    GetPage(name: "/shop", page: ()=> const ShopPage(), middlewares: [
      ShopMiddleware()
    ])
  ];
}
// Map routers = {
//   "/": (context) => const Tabs(),
//   "/dialog": (context) => const DialogPage(),
//   "/pageView": (context) => const PageViewPage(),
//   "/pageViewBuilder": (context) => const PageViewBuilderPage(),
//   "/pageViewSwiper": (context) => const PageViewSwiperPage(),
//   "/pageViewFullBuilder": (context) => const PageViewFullBuilderPage(),
//   "/shop": (context, {arguments}) => ShopPage(arguments: arguments)
// };
//
// // 相当于中间件，可以做权限判断
// var onGenerateRoute = (RouteSettings settings) {
//   final String? name = settings.name;
//   final Function? pageContentBuilder = routers[name];
//   if (pageContentBuilder != null) {
//     if (settings.arguments != null) {
//       // final Route route = MaterialPageRoute(
//       final Route route = CupertinoPageRoute(
//           builder: (context) => pageContentBuilder(context,
//               arguments: settings.arguments));
//       return route;
//     } else {
//       // final Route route = MaterialPageRoute(
//       final Route route = CupertinoPageRoute(
//           builder: (context) => pageContentBuilder(context));
//       return route;
//     }
//   }
//   return null;
// };