import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  const SliderDemo({ Key? key }) : super(key: key);

  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(onPressed: (){},child:const Text('Click Me')),
      
    );
  }
}