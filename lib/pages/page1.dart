import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

Future getData() async {
  var responts =
      await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
      
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
