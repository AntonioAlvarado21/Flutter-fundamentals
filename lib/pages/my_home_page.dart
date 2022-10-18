import 'package:flutter/material.dart';
import 'package:flutter_practices/pages/second_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Con variables
  late String nameValue;
  late String lastNameValue;

  //Con controladores
  final nameController = TextEditingController();
  final lastNameController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Uso básico del navegador"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
              key: formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    //controller: nameController,
                    decoration: const InputDecoration(labelText: "Nombre"),
                    onSaved: (value) {
                      nameValue = value!;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Llene el campo";
                      }
                    },
                  ),
                  TextFormField(
                    //controller: lastNameController,
                    decoration: const InputDecoration(labelText: "Apellido"),
                    onSaved: (value) {
                      lastNameValue = value!;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Llene el campoo";
                      }
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: "Phone number"),
                    keyboardType: TextInputType.phone,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        _showSecondPage(context);
                      },
                      child: const Text("Mostrar segunda pantalla"))
                ],
              ))),
    );
  }

  void _showSecondPage(BuildContext context) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
    }

    //Pasar nombre de ruta
    Navigator.of(context).pushNamed("/second",
        arguments:
            SecondPageArguments(name: nameValue, lastName: lastNameValue));
  }
}
