import 'package:flutter/material.dart';
//import 'package:randomnumber/random_page.dart';
import 'package:randomnumber/second_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Random Number หวย',
      theme: ThemeData(primaryColor: Colors.cyan),
      home: const SecondPage(
      ),
    );
  }
}
