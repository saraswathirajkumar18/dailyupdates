import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
 // const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home',style:TextStyle(
            fontSize:18,
            color: Color(0xFF1E1E1E),
          ),),
        ),
        body:Center(child: Text('Home')),
    );
  }
}