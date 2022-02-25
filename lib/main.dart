import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

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
  File? image;
  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print('Failed to pick image:$e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 500,
          width: double.infinity,
          color: Colors.blue,
          child: image == null
              ? const Center(
                  child: Text(
                    "Add your image",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              : Image.file(
                  image!,
                  width: 160,
                  height: 160,
                  fit: BoxFit.cover,
                ),
          // child: Column(children: [
          //   image == null ? Icon(Icons.person) : Image.file(image!)
          // ]),
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () {
                pickImage(ImageSource.camera);
              },
              child: const Icon(Icons.camera),
            ),
            const SizedBox(
              width: 20,
            ),
            FloatingActionButton(
              onPressed: () {
                pickImage(ImageSource.gallery);
              },
              child: const Icon(Icons.photo_library),
            ),
          ],
        )
      ],
    ));
  }
}
