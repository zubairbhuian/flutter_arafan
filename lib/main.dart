import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool checked = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: AnimatedCrossFade(
                  firstChild: Container(
                    height: 200,
                    color: Colors.purple,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          
                        });
                      },
                      child: Text("Click Me"),
                    ),
                  ),
                  secondChild: Center(
                    child: Container(
                      child: const Text(
                        "Well to my App",
                        style: TextStyle(fontSize: 32),
                      ),
                    ),
                  ),
                  crossFadeState: checked
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: Duration(seconds: 1)),
            )
          ],
        ),
      ),
    );
  }
}

// first child
class MyFirstChild extends StatefulWidget {
  const MyFirstChild({Key? key}) : super(key: key);

  @override
  State<MyFirstChild> createState() => _MyFirstChildState();
}

class _MyFirstChildState extends State<MyFirstChild> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          setState(() {});
        },
        child: Text("Click Me"),
      ),
    );
  }
}

// second child
class MySecoundChild extends StatelessWidget {
  const MySecoundChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: const Text(
          "Well to my App",
          style: TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}
