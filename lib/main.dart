import 'package:flutter/material.dart';
import 'package:flutter_test_one/slider.dart';

void main() => {runApp(MyApp())};


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: SafeArea(child: Scaffold(appBar:AppBar(title: const Text("My App"),actions: [
        ElevatedButton(onPressed: (){}, child: const Text("Log In"))
      ],) ,
      body: SliderDemo(),
      ),),      
    );
  }
}



