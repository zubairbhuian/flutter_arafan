// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // primaryColor:Colors.red,
          primarySwatch: Colors.orange),
      home: Scaffold(
        appBar: AppBar(
          // leading: IconButton(icon:Icon(Icons.menu),
          // tooltip: "hiiiiiiiiii",
          // onPressed: () {},
          // ),
          title: const Text(
            "My App",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  
                },
                icon: const Icon(Icons.add_alert),
                color: Colors.white),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
                color: Colors.white),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.navigate_next),
                color: Colors.white),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.orange,
                ),
                child: Text(
                  "Hi ! BHuian",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              ListTile(
                  leading: const Icon(Icons.message),
                  title: const Text("Message"),
                  onTap: () {}),
              ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text("Profile"),
                  onTap: () {}),
              ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text("Settings"),
                  onTap: () {}),
              ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text("Logout"),
                  onTap: () {}),
            ],
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(children: [
              const Text("Here is some demo text"),
              ElevatedButton(
                onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Awesome Snackbar!'),
            action: SnackBarAction(
              label: 'Action',
              onPressed: () {
                // Code to execute.
              },
            ),
          ),
        );

                },
                child: const Text(
                  "Click Me",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(onPressed: () {}, child: const Text("TextButton")),
              IconButton(
                  onPressed: () {},
                  color: Colors.red,
                  icon: const Icon(Icons.add))
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text("More", style: TextStyle(color: Colors.white)),
          icon: const Icon(
            Icons.more,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
