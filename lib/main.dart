import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // primaryColor:Colors.red,
          primarySwatch: Colors.grey),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
        ),
        body: const Center(child: Text("This is my app")),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.accessibility,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
