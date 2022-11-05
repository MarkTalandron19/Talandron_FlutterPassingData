import 'package:flutter/material.dart';
import 'firstpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Passing Data',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primarySwatch: Colors.deepPurple,
      ),
      home: FirstPage(),
    );
  }
}
