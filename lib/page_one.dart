import 'package:flutter/material.dart';
import 'package:quizz_app/good_bye.dart';
import 'package:quizz_app/main.dart';

class pageone extends StatefulWidget {
  const pageone({super.key});

  @override
  State<pageone> createState() => _pageoneState();
}

class _pageoneState extends State<pageone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 152, 197, 228),
      appBar: AppBar(
          backgroundColor: Colors.cyan, title: Center(child: Text('Welcome'))),
      body: Column(children: [
        Expanded(
            flex: 5,
            child: Center(
              child: Text(
                'Are you Ready To answer These Questions?',
                style: TextStyle(fontSize: 20),
              ),
            )),
        Expanded(
            child: Row(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.green),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      child: Text('Yes'),
                    )))
          ],
        )),
        Expanded(
            child: Row(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20, bottom: 18),
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.red),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => goodbye()));
                      },
                      child: Text('No'),
                    )))
          ],
        )),
      ]),
    );
  }
}
