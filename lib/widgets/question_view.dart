import 'package:flutter/material.dart';
import '../models/question_model.dart';

class QuestionView extends StatelessWidget {
  
  final Question question;

  QuestionView(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(8),
      child: Text(
        question.title,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}