import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(body: MyPopup()),
    );
  }
}

class MyPopup extends StatefulWidget {
  const MyPopup({Key? key}) : super(key: key);

  @override
  _MyPopupState createState() => _MyPopupState();
}

var btn = "Click Me";

class _MyPopupState extends State<MyPopup> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (
                builder,
              ) {
                return Dialog(
                  child: Container(
                    height: 250,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Hi Bhuian",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Here is some demo text Here is some demo text Here is some demo text Here is some demo text Here is some demo text",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            )
                          ]),
                    ),
                  ),
                );
              });
        },
        child: Text(btn),
      ),
    );
  }
}
