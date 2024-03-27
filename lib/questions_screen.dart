import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.selectAnswer});
  final void Function(String answer) selectAnswer;

  @override
  State<StatefulWidget> createState() {
    return _QuesionsScreenState();
  }
}

class _QuesionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void onTapAnswer(String selectedAnswer) {
    setState(() {
      widget.selectAnswer(selectedAnswer);
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ...currentQuestion.shuffledAnswers.map((answer) {
              return AnswerButton(
                  answerText: answer,
                  onTap: () {
                    onTapAnswer(answer);
                  });
            })
          ],
        ),
      ),
    );
  }
}
