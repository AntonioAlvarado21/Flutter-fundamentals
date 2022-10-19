import 'dart:async';

import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final _scaffKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffKey,
      appBar: AppBar(title: const Text("Mostrar un snackbar")),
      body: Center(
        child: TextButton(
            child: const Text("Mostrar"),
            onPressed: () {
              _showDialog(context);
            }),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("¿Confirmar acción?"),
          content: const Text("Eliminar elemento"),
          actions: <Widget>[
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Si")),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("No")),
          ],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        );
      },
      //barrierDismissible: false
    );
  }
}
