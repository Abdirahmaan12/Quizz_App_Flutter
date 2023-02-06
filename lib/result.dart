import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({super.key, required this.answer, required this.falses});

  final int answer;
  final int falses;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'the answers $answer',
            style: TextStyle(fontSize: 34),
          ),
          Text(
            'falses $falses',
            style: TextStyle(fontSize: 34),
          ),
        ],
      )),
    );
  }
}
