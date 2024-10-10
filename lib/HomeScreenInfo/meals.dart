import 'package:flutter/material.dart';

class Meals extends StatelessWidget {
  const Meals({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Display Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Display Example'),
        ),
        body: Center(
          child: Text(
            'Meals',
            style: TextStyle(
              fontSize: 24, // Font size
              fontWeight: FontWeight.bold, // Font weight
              color: Colors.blue, // Text color
            ),
          ),
        ),
      ),
    );
  }
}