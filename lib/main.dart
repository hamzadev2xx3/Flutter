import 'package:flutter/material.dart';
import 'package:flutter_application_1/chats.dart';
import 'package:flutter_application_1/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/": (context) => const HomePage(),
        // "/": (context) => const Chats(),
      },
    );
  }
}
