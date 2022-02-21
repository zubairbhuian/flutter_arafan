import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}



class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo),
            label:Text("dsfsd"),
            ),
                      BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo),
            ),
                      BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo),
            ),
                      BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo),
            ),
        ],
      ),
      body: Center(),
      
    );
  }
}