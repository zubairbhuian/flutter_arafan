import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_one/pages/page1.dart';
import 'package:flutter_test_one/pages/page2.dart';
import 'package:flutter_test_one/pages/page3.dart';
import 'package:flutter_test_one/pages/page4.dart';
import 'package:flutter_test_one/pages/page5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

var _page = 0;
final pages = [
  const Page1(),
  const Page2(),
  const Page3(),
  const Page4(),
  const Page5()
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          index: 0,
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.blue,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 600),
          onTap: (index) {
            setState(() => _page = index);
          },
          items: const [
            Icon(Icons.home),
            Icon(Icons.message),
            Icon(Icons.security),
            Icon(Icons.book),
            Icon(Icons.settings),
          ]),
      body: pages[_page],
    );
  }
}
