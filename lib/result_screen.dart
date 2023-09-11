import 'package:flutter/material.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(
      {super.key, required this.chosenAnswer, required this.summarydata});
  final List<String> chosenAnswer;
  List<Map<String, Object>> summarydata = [];

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add({
        'Question_index': i,
        'Questions': questions[i].text,
        'Correct_answer': questions[i].answers[0],
        'User_answer': chosenAnswer[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purple, Colors.black],
            ),
          ),
          child: SizedBox(
            width: double.infinity,
            child: Container(
              margin: const EdgeInsets.all(40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("You answered X out of y"),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: summarydata.map((data) {
                      return Row(
                        children: [
                          Text(
                            ((data['questions'] as int) + 1).toString(),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text(data['Question_index'] as String),
                                Text(data['Questions'] as String),
                                Text(data['User_answer'] as String),
                                Text(data['Correct_answer'] as String)
                              ],
                            ),
                          )
                        ],
                      );
                    }).toList(),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextButton(
                      onPressed: () {}, child: const Text("Restart Quiz!"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
