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
      home: SafeArea(
        child: Scaffold(
            body: Column(
          children: [
            ExpansionTile(
              title: Text("Zubair"),
              subtitle: Text("Fontend Developer"),
              // trailing: Icon(Icons.arrow_back_ios_sharp)
              leading: Icon(Icons.person_add_alt_sharp),
              children: [
                Container(
                  height: 300,
                  color: Colors.grey,
                  child: ListView(children: [
                    ListTile(
                      title: Text("Demo text"),
                      subtitle: Text("Here is some demo text"),
                      trailing: Icon(Icons.add),
                      onTap: () {},
                    )
                  ]),
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
