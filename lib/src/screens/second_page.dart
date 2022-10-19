import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final String url = ModalRoute.of(context)!.settings.arguments == null
        ? "NULL"
        : ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
        appBar: AppBar(title: const Text("Mostrar Imagen")),
        body: Center(
          child: Hero(
              tag: url,
              child: Image.network(
                url,
                height: 700,
                width: 400,
                fit: BoxFit.fill,
              )),
        ));
  }
}
