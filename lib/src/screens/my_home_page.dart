import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File? _image;

  Future getImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporaly = File(image.path);

      setState(() {
        this._image = imageTemporaly;
      });
    } on PlatformException catch (e) {
      print("Failed to pick image: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Pick an Image")),
        body: Center(
            child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            _image != null
                ? Image.file(
                    _image!,
                    width: 300,
                    height: 300,
                    fit: BoxFit.fill,
                  )
                : const Text("Selecciona una imagen"),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
                title: "Pick from Gallery",
                icon: Icons.image_outlined,
                onClick: () => getImage(ImageSource.gallery)),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
                title: "Take a photo",
                icon: Icons.camera_alt,
                onClick: () => getImage(ImageSource.camera)),
          ],
        )));
  }
}

Widget CustomButton(
    {required String title,
    required IconData icon,
    required VoidCallback onClick}) {
  return SizedBox(
    width: 200,
    child: ElevatedButton(
      onPressed: onClick,
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(
            width: 20,
          ),
          Text(title)
        ],
      ),
    ),
  );
}
