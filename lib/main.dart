import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _value == false ? Colors.purple : Colors.green,
      appBar: AppBar(
        title: const Text("MyShop"),
      ),
      body: Center(
          child: Switch(
        value: _value,
        onChanged: (val) {
          setState(() {
            _value = val;
          });
        },
      )),
    );
  }
}
