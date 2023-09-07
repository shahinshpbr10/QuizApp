import 'package:flutter/material.dart';

class StartQuiz extends StatelessWidget {
  const StartQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // const Opacity(
        //   opacity: 0.5,
        //   child:  Image(
        //     image: AssetImage('assets/quiz-logo.png'),
        //     width: 300,
        //   ),
        // ),
        const Image(
          image: AssetImage('assets/quiz-logo.png'),
          width: 300,
          color: Color.fromARGB(150, 249, 245, 245),
        ),
        const SizedBox(
          height: 80,
        ),
        const Text(
          "Learn Flutter in a fun way!",
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          icon: const Icon(Icons.arrow_right_alt),
          onPressed: () {},
          label: const Text("Start Quiz"),
        )
      ],
    ));
  }
}
