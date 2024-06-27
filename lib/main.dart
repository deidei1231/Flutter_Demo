import 'package:demo/pages/news.dart';
import 'package:demo/pages/search.dart';
import 'package:demo/pages/tabs.dart';
import 'package:flutter/material.dart';
import './pages/form.dart';
import './pages/news.dart';
import './pages/search.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  Map routers = {
    "/": (context) => const Tabs(),
    "/news": (context) => const NewsPage(),
    "/search": (context) => const SearchPage(),
    "/form": (context, {arguments}) => FormPage(arguments: arguments),
  };

  Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: const Tabs(),
        initialRoute: "/",

        // 配置onGenerateRoute 固定写法
        onGenerateRoute: (RouteSettings settings) {
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
        });
  }
}
