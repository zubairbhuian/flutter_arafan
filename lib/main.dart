import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: "/",
        routes: {
          "/frist": (context) => FristPage(),
          "/second": (context) => SecondPage()
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.red),
        home: FristPage());
  }
}

class FristPage extends StatelessWidget {
  const FristPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("This is My friset Page"),
              OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/second");
                  },
                  child: const Text("Switch to Secondpage"))
            ],
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("This is My Second Page"),
              OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/frist");
                  },
                  child: const Text("Switch to Fristpage"))
            ],
          ),
        ),
      ),
    );
  }
}
