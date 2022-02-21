import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text('Hi'),)),
      
    );
  }
}