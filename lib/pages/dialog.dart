import 'package:demo/pages/tabs.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../widget/myDialog.dart';

class DialogPage extends StatefulWidget {
  const DialogPage({super.key});

  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  void _alertDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("提示"),
            content: const Text("您确定要删除吗？"),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop("cancel");
                  },
                  child: const Text("取消")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop("ok");
                  },
                  child: const Text("确定")),
            ],
          );
        });
    print(result);
  }

  void _simpleDialog() async {
    var result = await showDialog(
        // 是否点击阴影取消dialog
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return SimpleDialog(title: const Text("提示"), children: <Widget>[
            SimpleDialogOption(
                child: const Text("选项1"),
                onPressed: () {
                  Navigator.of(context).pop("选项1");
                  print("选项1");
                }),
            const Divider(),
            SimpleDialogOption(
                child: const Text("选项2"),
                onPressed: () {
                  print("选项2");
                }),
            SimpleDialogOption(
                child: const Text("选项3"),
                onPressed: () {
                  print("选项3");
                })
          ]);
        });
    print(result);
  }

  void _modelBottomDialog() async {
    var result = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return SizedBox(
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ListTile(
                      title: const Text("data1"),
                      onTap: () {
                        print("data1");
                        Navigator.of(context).pop("data1");
                      }),
                  ListTile(
                      title: const Text("data2"),
                      onTap: () {
                        print("data2");
                        Navigator.of(context).pop("data2");
                      }),
                  ListTile(
                      title: const Text("data3"),
                      onTap: () {
                        print("data3");

                        Navigator.of(context).pop("data3");
                      }),
                ],
              ));
        });
    print(result);
  }

  void _toast() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void _myDialog() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return MyDialog(
            title: "我是自定义dialog",
            content: "自定义content",
            onTap: () {
              Navigator.of(context).pop();
            },
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('dialog'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(onPressed: () {
                // Navigator.of(context).pushNamed("/dialog");
                Get.offAll(const Tabs(index: 1));
              }, child: const Text('Get返回根目录')),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: _alertDialog,
                  child: const Text("alert_dialog弹出框")),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: _simpleDialog,
                  child: const Text("simple_dialog弹出框")),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: _modelBottomDialog,
                  child: const Text("showModelBottom_dialog弹出框")),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: _toast, child: const Text("toast_dialog弹出框")),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: _myDialog,
                  child: const Text("mydialog_dialog弹出框")),
            ],
          ),
        ));
  }
}
