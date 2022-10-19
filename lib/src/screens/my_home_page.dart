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
          return SimpleDialog(title: const Text("Seleccione"), children: <Widget>[
            ListTile(
                title: const Text("Eliminar"),
                leading: const Icon(Icons.delete),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
              title: const Text("Editar"),
              leading: const Icon(Icons.edit),
              onTap: () {
                Navigator.pop(context);
              },
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10) ),
            )
          ]);
        },
        //barrierDismissible: false 
      );
  }
}
