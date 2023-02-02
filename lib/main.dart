import 'package:flutter/material.dart';
import 'package:flutter_application_1/files/audiolocal.dart';
import 'package:flutter_application_1/files/homePage.dart';
//import 'package:flutter_application_1/files/mediaplayer.dart';
//import 'package:flutter_application_1/files/mediaplayer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // int selected = 0;

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
