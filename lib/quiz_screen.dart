import 'package:flutter/material.dart';
import 'package:quiz_application/quiz_brain.dart';

import 'custom_button.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key key}) : super(key: key);

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Icon> icons = <Icon>[];
  Icon correctIcon = const Icon(
    Icons.check,
    color: Colors.green,
    size: 45.0,
  );
  Icon incorrectIcon = const Icon(
    Icons.close,
    color: Colors.red,
    size: 45.0,
  );
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
              QuizBrain().getQuestion(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 26.0,
              ),
            ),
            Column(
              children: [
                CustomButton(
                  onPress: () {
                    icons.add(correctIcon);
                    setState(() {});
                  },
                  textButton: 'Туура',
                  color: const Color(0xff4CAF52),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                CustomButton(
                  onPress: (() {
                    icons.add(incorrectIcon);
                    setState(() {});
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
}
