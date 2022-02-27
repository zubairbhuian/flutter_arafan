import 'dart:convert';
import 'dart:html';

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
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemCount: _jesonData.length,
          itemBuilder: (context, index) {
            final post = _jesonData[index];
            return Text("Title: ${post["title"]}\n Body:${post["body"]}\n\n");
          },
        ),
      ),
    );
  }
}
