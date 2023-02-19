import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  final int score;
  final Function resetHandler;

  ResultView({
    required this.score,
    required this.resetHandler
  });


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Congratularions!\n You scored $score'),
          ElevatedButton(
            child: Text('Reset Quiz'),
            onPressed: () => resetHandler,
          ),
        ],
      ),
    );
  }
}