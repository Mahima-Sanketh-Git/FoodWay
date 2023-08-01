import 'package:flutter/material.dart';
import 'package:foodway/screens/intro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Home",
      debugShowCheckedModeBanner: false,
      home: Intro(),
    );
  }
}
