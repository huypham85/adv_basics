import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData
              .map((data) => Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(((data['question_index'] as int) + 1).toString()),
                      Expanded(
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                data['question'] as String,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(data['user_answer'] as String),
                              Text(data['correct_answer'] as String),
                            ],
                          ),
                        ),
                      )
                    ],
                  ))
              .toList(),
        ),
      ),
    );
  }
}
