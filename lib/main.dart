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
  
  List<Question> _questions = Repository().getQuestions();

  int _questionIndex = 0;
  int _score = 0;
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
            resetHandler: _resetQuiz
          ),
      )
      );
  }
}

/*
class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<Question> _questions = Repository().getQuestions();

  int _questionIndex = 0;
  int _score = 0;
  void _optionSelectedFor(Question question) {
    print(question.title);
    _questionIndex++;
  }

  void _resetQuiz() {
    _questionIndex = 0;
    _score = 0;
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
        ? QuizView(questions: _questions, questionIndex: _questionIndex, selectionHandler: _optionSelectedFor)
        : ResultView(score: _score, resetHandler: _resetQuiz),
      )
      );
  }
}
*/


/*
Column(
          children: [
            Text(questions[_questionIndex].title),
            Expanded(
              child: 
              ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: questions[_questionIndex].options.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  margin: EdgeInsets.all(10),
                  child: ElevatedButton(
                    child: Text(questions[_questionIndex].options[index].title),
                    onPressed: () => _optionSelectedFor(questions[_questionIndex]),),
                );
              } ,
            )
            )
          ],
        )
*/