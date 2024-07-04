import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopPage extends StatefulWidget {
  // 接受命名路由跳转传值

  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(Get.arguments);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("shop"),
      ),
      body: const Text("shop页面"),
    );
  }
}
