import 'package:flutter/material.dart';
import '../pages/dialog.dart';
import '../pages/shop.dart';
import 'package:demo/pages/tabs.dart';
// 配置IOS风格
import 'package:flutter/cupertino.dart';

Map routers = {
  "/": (context) => const Tabs(),
  "/dialog": (context) => const DialogPage(),
  "/shop": (context, {arguments}) => ShopPage(arguments: arguments)
};

// 相当于中间件，可以做权限判断
var onGenerateRoute = (RouteSettings settings) {
  final String? name = settings.name;
  final Function? pageContentBuilder = routers[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      // final Route route = MaterialPageRoute(
      final Route route = CupertinoPageRoute(
          builder: (context) => pageContentBuilder(context,
              arguments: settings.arguments));
      return route;
    } else {
      // final Route route = MaterialPageRoute(
      final Route route = CupertinoPageRoute(
          builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
  return null;
};