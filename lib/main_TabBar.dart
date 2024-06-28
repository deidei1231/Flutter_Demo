import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomePages(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ));
  }
}

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // 生命周期函数，组件初始化的时候触发
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () { 
              print("左侧的按钮图标");
            }),
        title: const Text("tab demo"),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                print("右侧的按钮图标");
              }),
          IconButton(
              icon: const Icon(Icons.more_horiz),
              onPressed: () {
                print("右侧的按钮图标");
              }),
        ],
        bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.green,
            indicatorWeight: 2,
            // indicatorSize:  TabBarIndicatorSize.label,
            indicatorSize:  TabBarIndicatorSize.tab,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.green,
            indicator: const BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            indicatorPadding: const EdgeInsets.all(5),
            controller: _tabController,
            tabs: const [
              Tab(
                child: Text("关注"),
              ),
              Tab(
                child: Text("热门"),
              ),
              Tab(
                child: Text("视频"),
              ),
            ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView(
            children: const [
              ListTile(
                title: Text("我是关注列表"),
              ),
            ],
          ),
          ListView(
            children: const [
              ListTile(
                title: Text("我是关注列表"),
              ),
            ],
          ),
          ListView(
            children: const [
              ListTile(
                title: Text("我是关注列表"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
