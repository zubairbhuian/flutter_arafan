import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int value = 0;
  increment() {
    setState(() {
      value++;
    });
  }

  decrement() {
    setState(() {
      value--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              value.toString(),
              style: TextStyle(fontSize: 50),
            ),
            ElevatedButton(onPressed: () => increment(), child: Text("+")),
            ElevatedButton(onPressed: () => decrement(), child: Text("-"))
          ]),
        ),
      ),
    );
  }
}
