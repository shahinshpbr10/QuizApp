// ignore: file_names
import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  QuestionSummary({super.key, required this.summarydata});

  List<Map<String, Object>> summarydata = [];
  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
