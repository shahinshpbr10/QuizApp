import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartQuiz extends StatelessWidget {
  const StartQuiz(this.switchScreen, {super.key});
  final void Function() switchScreen;
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
        Text(
          "Learn Flutter in a fun way!",
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
            fontSize: 24,
            color: const Color.fromARGB(255, 245, 183, 203),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          icon: const Icon(Icons.arrow_right_alt),
          onPressed: switchScreen,
          label: const Text("Start Quiz"),
        )
      ],
    ));
  }
}
