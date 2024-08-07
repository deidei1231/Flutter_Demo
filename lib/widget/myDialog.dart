import 'package:flutter/material.dart';

class MyDialog extends Dialog {
  final String title;
  final String content;
  final Function()? onTap;

  const MyDialog(
      {super.key,
      required this.title,
      required this.content,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.red,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(title),
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            // child: IconButton(
                            //     onPressed: () {}, icon: const Icon(Icons.close)),
                            child: InkWell(
                              onTap: onTap,
                              child: const Icon(Icons.close),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(),
              Container(
                padding: const EdgeInsets.all(10.0),
                width: double.infinity,
                child: Text(content),
              )
            ],
          ),
        ),
      ),
    );
  }
}
