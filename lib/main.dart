import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Doctor's App"),
        ),
        body: const Center(
          child: Text("This is my app"),
        ),
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: (){},
          label: const Text('Send'),
          icon: const Icon(Icons.navigation),
          backgroundColor: Colors.red,
          ),
      ),
    );
  }
}
