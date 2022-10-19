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
        body: const ShowSnackBar());
  }
}

class ShowSnackBar extends StatelessWidget {
  const ShowSnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextButton(
            onPressed: () {
              final snackbar = SnackBar(
                  action: SnackBarAction(
                    label: "Cancelar",
                    textColor: Colors.blue.shade50,
                    onPressed: () {
                      print("Se cancelo la acción");
                    },
                  ),
                  backgroundColor: Colors.redAccent,
                  duration: const Duration(seconds: 3),
                  content: Row(
                    children: const [
                      Icon(
                        Icons.thumb_up,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "Deleted action sucessful",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 18),
                      )
                    ],
                  ));
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            child: const Text("Mostrar Snackbar")));
  }
}
