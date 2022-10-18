import 'package:flutter/material.dart';
import 'package:flutter_practices/pages/second_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController nameTextController;
  late TextEditingController lastNameTextController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Uso básico del navegador"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(labelText: "Nombre: "),
              controller: nameTextController,
            ),
            const SizedBox(height: 20,),
            TextField(
              decoration: const InputDecoration(labelText: "Apellido: "),
              controller: lastNameTextController,
            ),
            const SizedBox(height: 80,),
            ElevatedButton(
              child: const Text("Mostrar segunda pantalla"),
              onPressed: () {
                _showSecondPage(context);
              },
            )
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    nameTextController = TextEditingController();
    lastNameTextController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    nameTextController.dispose();
    lastNameTextController.dispose();
  }

  void _showSecondPage(BuildContext context) {
    // final route = MaterialPageRoute(builder: (BuildContext context) {
    //   return const SecondPage(name: "Jorge");
    // });
    // Navigator.of(context).push(route);

    //Pasar nombre de ruta
    Navigator.of(context).pushNamed("/second",
        arguments: SecondPageArguments(
            name: nameTextController.text,
            lastName: lastNameTextController.text));
  }
}
