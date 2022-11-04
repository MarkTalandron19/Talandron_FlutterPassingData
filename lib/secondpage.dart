import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key, required this.data});

  final String data;
  @override
  State<SecondPage> createState() => _SecondPage();
}

class _SecondPage extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
        centerTitle: true,
      ),
      body: Column(children: <Widget>[
        const SizedBox(height: 15),
        Row(children: <Widget>[
        const SizedBox(width: 10),  
        Text(
          widget.data,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
            color: Colors.black,
          )
        ),
        ],)
      ],)
    );
  }
}