import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Fade In Image")),
        body: Center(
            child: FadeInImage.assetNetwork(
          image:
              "https://i.pinimg.com/originals/0a/4d/cb/0a4dcb92fa2d3c601b58d72720d6bec4.jpg",
          placeholder: "assets/loading.gif",
          height: 600,
          fit: BoxFit.fitHeight,
          fadeInCurve: Curves.easeOutCirc,
        )));
  }
}
