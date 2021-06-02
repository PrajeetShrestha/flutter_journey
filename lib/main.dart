import 'package:flutter/material.dart';
import 'package:flutterjourney/pages/home/home_page.dart';
import 'package:flutterjourney/pages/random_words/random_words_page.dart';
import 'package:flutterjourney/pages/state_management/state_management_page.dart';
import 'package:flutterjourney/pages/ui_components/ui_components_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => HomePage(),
        "/random_words": (context) => RandomWordsPage(),
        "/ui_components": (context) => UIComponentsPage(),
        "/state_management": (context) => StateManagementPage()
      },
    );
  }
}
