import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final url = "https://jsonplaceholder.typicode.com/posts";
  var _jesonData = [];

  void myDate() async {
    try {
      final response = await get(Uri.parse(url));
      final josonData = jsonDecode(response.body) as List;
      setState(() {
        _jesonData = josonData;
      });
    } catch (err) {
      print(err);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: ListView(
        // itemCount: _jesonData.length,
        // itemBuilder: itemBuilder,
      ),),
    );
  }
}
