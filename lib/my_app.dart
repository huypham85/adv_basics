import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void onPressed() {}

  @override
  Widget build(Object context) {
    return Container(
      color: Colors.purple,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 50),
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 50),
            const Text(
              'Learn Flutter the fun way!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 50),
            ButtonTheme(
              minWidth: 80,
              height: 100,
              child: OutlinedButton(
                onPressed: onPressed,
                child: const Text(
                  'Start quiz',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
