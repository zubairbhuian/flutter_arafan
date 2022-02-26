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
        body: Center(
      child: ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return SizedBox(
                  height: 216,
                  // color: Colors.yellow,
                  child: Column(children: const [
                    ListTile(
                      title: Text("Dr. Tarek"),
                      subtitle: Text("Dentist"),
                      trailing: Icon(Icons.edit),
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text("Aburayhan"),
                      subtitle: Text("Backend Developer"),
                      trailing: Icon(Icons.edit),
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text("Moyaj Hasan"),
                      subtitle: Text("Fontend Developer"),
                      trailing: Icon(Icons.edit),
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ]),
                );
              });
        },
        child: const Text("Click Me"),
      ),
    ));
  }
}
