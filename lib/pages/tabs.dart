import 'package:flutter/material.dart';
import './tabs/home.dart';
import './tabs/settings.dart';
import './tabs/message.dart';

class Tabs extends StatefulWidget {
  final int index;
  const Tabs({super.key, this.index = 0});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  late int _currentIndex = 0;
  final List<Widget> _pages = const [HomePage(), SettingsPage(), MessagePage()];

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("flutter App")),
      drawer: const Drawer(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: DrawerHeader(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://www.itying.com/images/flutter/2.png"),
                              fit: BoxFit.cover)),
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                                backgroundImage: NetworkImage("https://www.itying.com/images/flutter/3.png"),
                                 ),
                            title: Text("nihao"),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: Text("个人中心"),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text("系统设置"),
            )
          ],
        ),
      ),
      endDrawer: const Drawer(
        child: Text("左侧侧边栏"),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.red, //选中的颜色
          // type: BottomNavigationBarType.fixed, // 底部有4个以上需要配置这个
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置"),
          ]),
      floatingActionButton: Container(
        width: 60,
        height: 60,
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(30),
        ),
        child: FloatingActionButton(
            backgroundColor: _currentIndex == 1 ? Colors.red : Colors.yellow,
            shape: const CircleBorder(
                side: BorderSide(color: Colors.transparent, width: 1.0)),
            onPressed: () {
              setState(() {
                _currentIndex = 1;
              });
            },
            child: const Icon(Icons.add)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
