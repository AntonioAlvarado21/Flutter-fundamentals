import 'package:flutter/material.dart';
import 'package:flutter_practices/src/screens/second_page.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final _scaffKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffKey,
      appBar: AppBar(title: const Text("Uso del drawer")),
      body: const Center(child: Text("Hola")),
      drawer: _getDrawer(context),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.menu),
        onPressed: () => _scaffKey.currentState?.openDrawer(),
      ),
    );
  }

  Widget _getDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          /*DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.purpleAccent,
            ),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  FlutterLogo(
                    size: 30,
                  ),
                  Text(
                    "Uso del Drawer",
                    style: TextStyle(color: Colors.white),
                  ),
                ]),
          ),*/
          UserAccountsDrawerHeader(
            accountName: const Text("Jorge"),
            accountEmail: const Text("jorge@hotmail.com"),
            currentAccountPicture: const FlutterLogo(),
            onDetailsPressed: () {
              print("Show details");
            },
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue, Colors.blueAccent , Colors.deepPurple])),
          ),
          ListTile(
            title: const Text("Inicio"),
            leading: const Icon(Icons.home),
            onTap: () => showHome(context),
          ),
        ],
      ),
    );
  }

  showHome(BuildContext context) {
    Navigator.pop(context);
  }
}
