//Definición del Material App
import 'package:flutter/material.dart';
import 'package:flutter_practices/src/screens/my_home_page.dart';
import 'package:flutter_practices/src/screens/second_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', initialRoute: "/", routes: {
      "/": (BuildContext context) => const MyHomePage(),
      "/second": (BuildContext context) => const SecondPage()
      });
  }
}
