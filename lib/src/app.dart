import 'package:flutter/material.dart';
import 'ui/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
