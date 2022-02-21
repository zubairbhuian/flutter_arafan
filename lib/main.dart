import 'package:flutter/material.dart';
import 'package:flutter_test_one/pages/page1.dart';
import 'package:flutter_test_one/pages/page2.dart';
import 'package:flutter_test_one/pages/page3.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final PageController _controller = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("My App")),
          body: PageView(
            scrollDirection: Axis.vertical,
        controller: _controller,
        children:const [
          Page1(),
          Page2(),
          Page3(),
        ],
      )),
    );
  }
}
