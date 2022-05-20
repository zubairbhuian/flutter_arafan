import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  final appName = "MyApp";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.purple),
        home: Scaffold(
          appBar: AppBar(title: const Text("My App")),
          body: const MyBody(),
        ));
  }
}

class MyBody extends StatefulWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  _MyBodyState createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  final url = "https://jsonplaceholder.typicode.com/photos";
  var data = [];
  Future myData() async {
    var response = await http.get(Uri.parse(url));
    var deCode = jsonDecode(response.body);
    setState(() {
      data = deCode;
      print(data);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myData();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (contex, index) {
        return ListTile(
          title: Text(data[index]["title"]),
        );
      },

      // body: Center(
      //     child: ElevatedButton(
      //   onPressed: () {},
      //   child: Text("Click Me"),
      // )),
    );
  }
}
