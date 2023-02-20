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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Congratularions!\n You scored $score',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            child: Text('Reset Quiz'),
            onPressed: resetHandler(),
          ),
        ],
      ),
    );
  }
}