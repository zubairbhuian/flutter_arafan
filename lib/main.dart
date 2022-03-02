import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _selected = "Chose";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: SafeArea(
          child: Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                _selected,
                style: const TextStyle(fontSize: 22),
              ),
              const SizedBox(
                height: 20,
              ),
              DropdownButton(
                  items: const [
                    DropdownMenuItem(value: "Home", child: Text("Home")),
                    DropdownMenuItem(value: "About", child: Text("About")),
                    DropdownMenuItem(
                        value: "Contact Us", child: Text("Contact Us")),
                    DropdownMenuItem(value: "Hire Me", child: Text("Hire Me")),
                  ],
                  onChanged: (val) {
                    setState(() {
                      _selected = val.toString();
                    });
                  })
            ],
          ),
        ),
      )),
    );
  }
}
