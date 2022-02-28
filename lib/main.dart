import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(
          body: Center(
              child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            child: Container(
                              width: 200,
                              height: 200,
                              color: Colors.green,
                              child: Column(children: const[
                                Text("data"),
                                SizedBox(height: 20),
                                Text("Here is some demo text"),
                              ]),
                            ),
                          );
                        });
                  },
                  child: const Text("Click Me")))),
    );
  }
}
