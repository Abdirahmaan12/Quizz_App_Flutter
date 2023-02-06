import 'package:flutter/material.dart';

class goodbye extends StatefulWidget {
  const goodbye({super.key});

  @override
  State<goodbye> createState() => _goodbyeState();
}

class _goodbyeState extends State<goodbye> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Good_Bye')),
      body: Center(
          child: Text(
        'Good_Bye 👋',
        style: TextStyle(fontSize: 24),
      )),
    );
  }
}
