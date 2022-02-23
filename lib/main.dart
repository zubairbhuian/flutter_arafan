import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _value = 0;
  increment() {
    setState(() {
      _value++;
    });
  }

  decrement() {
    setState(() {
      _value--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              _value.toString(),
              style: const TextStyle(
                fontSize: 40,
              ),
            ),
            ElevatedButton(
                onPressed: () => increment(), child: const Text("+")),
            ElevatedButton(
                onPressed: () => decrement(), child: const Text("-")),
          ]),
        ),
      ),
    );
  }
}
