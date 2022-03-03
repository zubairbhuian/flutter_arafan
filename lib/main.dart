import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: SafeArea(
          child: Scaffold(
              body: Center(
                  child: AnimatedContainer(
                height: _value == false ? 100 : 50,
                width: _value == false ? 100 : 50,
                color: Colors.red,
                duration: const Duration(seconds: 1),
              )),
              floatingActionButton: FloatingActionButton(
                onPressed: () => setState(() {
                  _value = !_value;
                }),
                child: _value == false
                    ? const Icon(Icons.remove)
                    : const Icon(Icons.add),
              ))),
    );
  }
}
