import 'package:flutter/material.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/question.dart';
import 'package:quizapp/result_screen.dart';
import 'package:quizapp/start_quiz_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  // Widget? activeScreen;
  var activeScreen = 'StartQuiz-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'Questions-Screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'Result-Screen';
      });
    }
  }
  // void initState() {
  //   super.initState();
  //   activeScreen = StartQuiz(switchScreen);
  // }

  // void switchScreen() {
  //   setState(() {
  //     activeScreen = const QuestionScreen();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartQuiz(switchScreen);

    if (activeScreen == 'Questions-Screen') {
      screenWidget = QuestionScreen(onSelectedAnswer: chooseAnswer);
    }
    if (activeScreen == 'Result-Screen') {
      return screenWidget = ResultScreen(
        chosenAnswer: selectedAnswers,
        summarydata: [],
      );
    }
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
            child: screenWidget),
      ),
    );
  }
}
