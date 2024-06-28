import 'package:flutter/material.dart';
import '../pages/form.dart';
import '../pages/news.dart';
import '../pages/search.dart';
import '../pages/shop.dart';
import 'package:demo/pages/tabs.dart';

Map routers = {
  "/": (context) => const Tabs(),
  "/news": (context) => const NewsPage(),
  "/search": (context) => const SearchPage(),
  "/form": (context, {arguments}) => FormPage(arguments: arguments),
  "/shop": (context, {arguments}) => ShopPage(arguments: arguments)
};

// 相当于中间件，可以做权限判断
var onGenerateRoute = (RouteSettings settings) {
  final String? name = settings.name;
  final Function? pageContentBuilder = routers[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) => pageContentBuilder(context,
              arguments: settings.arguments));
      return route;
    } else {
      final Route route = MaterialPageRoute(
          builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
  return null;
};