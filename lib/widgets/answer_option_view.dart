import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/question_model.dart';

class AnswerOptionView extends StatelessWidget {
  
  final Function selectionHandler;
  final Option option;

  AnswerOptionView({
    required this.option, 
    required this.selectionHandler,
  });

  @override
  Widget build(BuildContext context) {

    print(option.title);
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        child: Text(option.title),
        onPressed: () => selectionHandler(option.weight),
        ),
      );
  }
}