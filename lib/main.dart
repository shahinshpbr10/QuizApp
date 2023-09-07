import 'package:flutter/material.dart';
import 'package:quizapp/start_quiz_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
            child: const StartQuiz()),
      ),
    );
  }
}
