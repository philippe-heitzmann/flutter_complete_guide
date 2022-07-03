import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //const Result({Key? key}) : super(key: key);

  Result({required this.totalScore, required this.restartQuiz});

  int totalScore = 0;
  final VoidCallback restartQuiz;

  String get resultPersonality {
    String predictedPersonality;
    if (totalScore < 6) {
      predictedPersonality = 'Chill';
    } else if (totalScore < 11) {
      predictedPersonality = 'Nice';
    } else {
      predictedPersonality = 'Fun';
    }
    return predictedPersonality;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Text(
          'Personality Type: $resultPersonality with final score $totalScore',
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        )),
        ElevatedButton(onPressed: restartQuiz, child: Text('Restart the quiz!'))
      ],
    );
  }
}
