# Flutter Transform widget




 ```dart

import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // DateTime dateTime;
  // getDate()async{
  //   DateTime data =await showDatePicker(context: context, initialDate:DataTime(DataTime.now().year), firstDate: firstDate, lastDate: lastDate)
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: SafeArea(
          child: Scaffold(
              body: Center(
        child: Transform.rotate(
          angle: pi / 4,
          child: Container(
            height: 150,
            width: 150,
            color: Colors.pink,
          ),
        ),
      ))),
    );
  }
}



```

## ScreenShort
![](/imgs/demo.png)