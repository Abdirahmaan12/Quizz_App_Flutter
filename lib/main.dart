import 'package:flutter/material.dart';
import 'package:quizz_app/page_one.dart';
import 'package:quizz_app/questions.dart';
import 'package:quizz_app/result.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: pageone(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // List<String> questions = [
  //   'flutter is the best framework in mobile application development',
  //   'Flutter is an open source framework developed and supported by Google',
  //   'flutter was released in 2010'
  // ];

  // List<bool> answers = [true, true, false];

  List<Question> questions = [
    Question(
        q: 'flutter is the best framework in mobile application development',
        a: true),
    Question(q: 'Flutter has a three-layered architecture', a: true),
    Question(
        q: 'Flutter is an open source framework developed and supported by Google',
        a: true),
    Question(q: 'flutter was released in 2010', a: false),
    Question(
        q: 'Dart is an object-oriented programming language with a syntax like the C Language The language is open source and was developed by Google in 2011',
        a: true),
    Question(
        q: 'There are many popular apps which use Flutter. Some of the apps are Reflectly, Google Ads, Alibaba',
        a: true),
    Question(q: 'Flutter architecture is made up of five layers', a: false),
    Question(
        q: 'Widgets in Flutter are nested with each other to get the final design of the app. Widgets are used to code mobile phone applications',
        a: true),
    Question(
        q: 'A container class in flutter is a widget having the capacity to accommodate multiple child widgets and manage them efficiently through dimensions, padding, and background color',
        a: true),
    Question(q: 'There are four types of streams in Dart language', a: false),
  ];

  Question q1 = Question(q: 'hgfjfgjfgfg', a: true);
  int questionIndex = 0;
  int correctAnswers = 0;
  int falseAnswers = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff081c15),
      appBar: AppBar(
        title: Center(child: Text('Quizz App')),
        backgroundColor: Color.fromARGB(255, 35, 35, 49),
      ),
      body: Column(children: [
        Expanded(
            flex: 5,
            child: Center(
              child: Text(
                questions[questionIndex].questionName!,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white, fontSize: 22, letterSpacing: 2.0),
              ),
            )),
        Expanded(
            child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.green),
                        onPressed: () {
                          final iscorrect =
                              questions[questionIndex].questionAnswer;
                          setState(() {
                            if (questionIndex < questions.length - 1)
                              questionIndex++;
                            else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Result(
                                          answer: correctAnswers,
                                          falses: falseAnswers)));
                            }
                          });
                          if (iscorrect == true) {
                            print('waa sax');
                            setState(() {
                              correctAnswers = correctAnswers + 1;
                            });
                          } else {
                            setState(() {
                              falseAnswers = falseAnswers + 1;
                            });
                            print('waa qaladay');
                          }
                        },
                        child: Text(
                          'True',
                          style: TextStyle(fontSize: 18),
                        ))))
          ],
        )),
        Expanded(
            child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20, bottom: 16),
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        onPressed: () {
                          final isfalse =
                              questions[questionIndex].questionAnswer;

                          if (isfalse == false) {
                            print('waa saxday');
                            setState(() {
                              correctAnswers = correctAnswers + 1;
                            });
                          } else {
                            print('waa qaladay');
                            setState(() {
                              falseAnswers = falseAnswers + 1;
                            });
                          }
                          setState(() {
                            if (questionIndex < questions.length - 1)
                              questionIndex++;
                            else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Result(
                                          answer: correctAnswers,
                                          falses: falseAnswers)));
                            }
                          });
                        },
                        child: Text(
                          'False',
                          style: TextStyle(fontSize: 18),
                        ))))
          ],
        )),
      ]),
    );
  }
}
