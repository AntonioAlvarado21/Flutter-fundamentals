import 'package:flutter/material.dart';
import 'package:flutter_practices/pages/my_home_page.dart';
import 'package:flutter_practices/pages/second_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', initialRoute: "/", routes: {
      "/": (BuildContext context) => MyHomePage(),
      "/second": (BuildContext context) =>  const SecondPage()
    });
    //home: MyHomePage());
  }
}
