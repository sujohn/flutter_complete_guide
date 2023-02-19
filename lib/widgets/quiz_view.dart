import 'package:flutter/material.dart';
import '../widgets/question_view.dart';
import '../models/question_model.dart';
import '../widgets/answer_option_view.dart';

class QuizView extends StatelessWidget {
  final List<Question> questions;
  final int questionIndex;
  final Function selectionHandler;

  QuizView({
    required this.questions, 
    required this.questionIndex, 
    required this.selectionHandler
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        QuestionView(questions[questionIndex]),
        Expanded(
          child: ListView.builder(
            itemCount: questions.length,
            itemBuilder: (context, index) {
              return AnswerOptionView(
                optionText: questions[questionIndex].options[index].title,
                selectionHandler: () => selectionHandler(questions[questionIndex].options[index].weight),
              );;
            },
          ),
        ),
      ],
    );
  }
}