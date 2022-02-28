import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  final appName = "MyApp";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.purple),
        home: Scaffold(
          appBar: AppBar(title: Text(appName)),
          body: MyBody(),
        ));
  }
}

class MyBody extends StatefulWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  _MyBodyState createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
        ListTile(
          title: Text("dsssf"),
        ),
      ],
    );
  }
}
