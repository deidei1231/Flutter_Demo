import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const MyHomePage(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _numCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("flutter App")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$_numCount", style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 60),
            ElevatedButton(onPressed: (){
              setState(() {
                _numCount++;
              });
            }, child: const Text("增加"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { 
        setState(() {
          _numCount++;
        });
      },
      child: const Icon(Icons.add),),
    );
  }
}
