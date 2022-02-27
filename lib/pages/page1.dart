import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  var data = [];
  Future getData() async {
    var response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    setState(() {
      var decode = jsonDecode(response.body);
      data = decode;
      print(data);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (contex, index) {
          return ListTile(
            title: Text(data[index]["title"]),
            subtitle: Text(data[index]["body"]),
          );
        },
      ),
    );
  }
}
