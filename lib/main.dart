import 'package:flutter/material.dart';
import 'package:flutter_test_one/pages/page1.dart';
import 'package:flutter_test_one/pages/page2.dart';
import 'package:flutter_test_one/pages/page3.dart';
import 'package:flutter_test_one/pages/page4.dart';

void main() => runApp(MyApp());

const _appName = "My App";

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentIndex = 0;
  final pages = [Page1(), Page2(), Page3(), Page4()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_appName),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedFontSize: 12,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              backgroundColor: Colors.purple,
              icon: Icon(Icons.message),
              label: 'Message'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Call'),
          BottomNavigationBarItem(
              icon: Icon(Icons.pan_tool), label: 'Pan Tool'),
          BottomNavigationBarItem(icon: Icon(Icons.radio), label: 'Radio'),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: pages[_currentIndex],
    );
  }
}
