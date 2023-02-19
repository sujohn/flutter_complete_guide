import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/question_model.dart';

class AnswerOptionView extends StatelessWidget {
  
  final Function selectionHandler;
  final String optionText;

  AnswerOptionView({
    required this.optionText, 
    required this.selectionHandler,
  });

  @override
  Widget build(BuildContext context) {

    print(optionText);
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        child: Text(optionText),
        onPressed: () => selectionHandler,
        ),
      );
  }
}