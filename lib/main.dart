import 'package:vishwakarmaapp/screens/content.dart';
import 'package:vishwakarmaapp/screens/home.dart';
import 'package:vishwakarmaapp/screens/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context)=> Home(),
        '/menu': (context) => Menu(),
        '/content': (context) => Content(),
      },
    );
  }
}

