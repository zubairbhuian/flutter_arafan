// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // primaryColor:Colors.red,
          primarySwatch: Colors.orange),
      home: Scaffold(
        appBar: AppBar(
          // leading: IconButton(icon:Icon(Icons.menu),
          // tooltip: "hiiiiiiiiii",
          // onPressed: () {},
          // ),
          title: const Text(
            "My App",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  
                },
                icon: const Icon(Icons.add_alert),
                color: Colors.white),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
                color: Colors.white),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.navigate_next),
                color: Colors.white),
          ],
        ),
        body: const Center(
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.send,color: Colors.white,)
        ),
      ),
    );
  }
}

