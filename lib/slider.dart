import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  const SliderDemo({Key? key}) : super(key: key);

  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  var _value = 20.0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            child: Text(
              "This is some demo text",
              style: TextStyle(fontSize: _value),
            ),
          ),
          Slider(
              min: 16,
              max: 40,
              value: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              })
        ],
      ),
    );
  }
}
