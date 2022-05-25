import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:quiz_application/app_constants/colors/app_colors.dart';
import 'package:quiz_application/app_constants/text_styles/app_text_style.dart';
import 'package:quiz_application/data/repositories/quiz_repo.dart';
import 'package:quiz_application/widgets/icon_widget.dart';

import '../widgets/custom_button.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key key}) : super(key: key);

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<IconWidget> icons = <IconWidget>[];
  IconWidget correctIcon = const IconWidget(
    icon: Icons.check,
    iconColor: AppColors.green,
  );
  IconWidget incorrectIcon = const IconWidget(
    icon: Icons.close,
    iconColor: AppColors.red,
  );

  String suroo;
  bool isFinished;

  @override
  void initState() {
    super.initState();
    suroo = quizRepo.getQuestion();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212121),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Tапшырма - 07',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(height: 25.0),
            Text(
              suroo ?? 'Suroolor',
              style: AppTextStyle.content,
            ),
            if (isFinished == true)
              CustomButton(
                textButton: 'Kairadan bashta',
                onPress: reset,
              )
            else
              Column(
                children: [
                  CustomButton(
                    onPress: () {
                      userAnswered(true);
                    },
                    textButton: 'Туура',
                    color: const Color(0xff4CAF52),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  CustomButton(
                    onPress: (() {
                      userAnswered(false);
                    }),
                    textButton: 'Туура эмес',
                    color: const Color(0xffF54335),
                  ),
                ],
              ),
            Row(
              children: icons,
            )
          ],
        ),
      ),
    );
  }

  void userAnswered(bool userAnswer) {
    bool correctAnswer = quizRepo.getAnswers();
    if (userAnswer == correctAnswer) {
      icons.add(correctIcon);
    } else {
      icons.add(incorrectIcon);
    }

    quizRepo.getNext();
    suroo = quizRepo.getQuestion();
    if (suroo == 'Ayagina chykty') {
      isFinished = true;
    }
    setState(() {});
  }

  void reset() {
    quizRepo.reset();
    suroo = quizRepo.getQuestion();
    isFinished = false;
    icons = <IconWidget>[];
    setState(() {});
  }
}
