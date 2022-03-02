import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: SafeArea(
          child: Scaffold(
        body: Center(
          child: RichText(
              text: const TextSpan(
                  text: "Hello,how are you, ",
                  style: TextStyle(color: Colors.red),
                  children: [
                TextSpan(
                    text: "Zubair?",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold)),
              ])),
        ),
      )),
    );
  }
}
