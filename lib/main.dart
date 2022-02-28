import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  final appName = "MyApp";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.purple),
        home: Scaffold(
          appBar: AppBar(title: Text(appName)),
          body: MyBody(),
        ));
  }
}

class MyBody extends StatefulWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  _MyBodyState createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  var data = [];
  var url = "https://jsonplaceholder.typicode.com/posts";
  Future myData() async {
    var jsonData =
        await http.get(Uri.parse("url"));

    setState(() {
      var deCode = jsonDecode(jsonData.body);
      data = deCode;
      print(data);
    });
  }

  @override
  void initState() {
    super.initState();
    myData();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          title: Text("dsssf"),
        ),
      ],
    );
  }
}
