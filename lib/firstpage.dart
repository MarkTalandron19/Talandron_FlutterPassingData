import 'package:flutter/material.dart';
import 'secondpage.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});
  final txtController = TextEditingController();
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 20),
          TextField(
            controller: txtController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Input Data',
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: (() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: ((context) => SecondPage(data: txtController.text))
            )
            );
          }), 
          child: const Text(
            'Pass Data',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            )
          ))
        ]
        ),
    );
  }
}