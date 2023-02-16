import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/question.dart';
import 'package:flutter_complete_guide/models/repository.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<Question> questions = Repository().getQuestions();

  int _questionIndex = 0;
  _optionSelectedFor(Question question) {
    print(question);
    _questionIndex++;
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[_questionIndex].title),
            ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: questions[_questionIndex].options.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  color: Colors.blue,
                  child: Center(child: Text(questions[_questionIndex].options[index].title),),
                );
              } ,
            )
          ],
        )
      ),
    );
  }
}