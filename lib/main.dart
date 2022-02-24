import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 500,
          width: double.infinity,
          color: Colors.blue,
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.camera),
            ),
            const SizedBox(
              width: 20,
            ),
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.photo_library),
            ),
          ],
        )
      ],
    ));
  }
}
