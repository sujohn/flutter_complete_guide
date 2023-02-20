import 'package:flutter/material.dart';
import './models/question_model.dart';
import './models/repository.dart';
import './widgets/quiz_view.dart';
import './widgets/result_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  final List<Question> _questions = Repository().getQuestions();

  var _questionIndex = 0;
  var _score = 0;
  void _optionSelectedFor(int score) {
    
    _score += score;
    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz() {

      setState(() {
        _questionIndex = 0;
        _score = 0;
      });
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: _questionIndex < _questions.length
        ? QuizView(
            questions: _questions, 
            questionIndex: _questionIndex, 
            selectionHandler: _optionSelectedFor
          )
        : ResultView(
            score: _score, 
            resetHandler: () => _resetQuiz
          ),
      ),
      );
  }
}