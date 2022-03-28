import 'dart:developer';

import 'package:quiz_application/quiz_model.dart';

class QuizBrain {
  int _index = 0;
  List<QuizModel> suroolorJanaJooptor = <QuizModel>[
    QuizModel(suroolor: 'Bishkek Oshko karashtuu', jooptor: false), //0
    QuizModel(suroolor: 'Batken Oshto jaigashkan', jooptor: false), // 1
    QuizModel(suroolor: 'Narynda Son Kol jaigashkan  ', jooptor: true), // 2
  ];

  //Surrolordu alip kel
  String getQuestion() {
    if (_index < suroolorJanaJooptor.length) {
      return suroolorJanaJooptor[_index].suroolor;
    } else {
      return 'Ayagina chykty';
    }
  }

  //Jooptordu alip kel
  bool getAnswers() {
    return suroolorJanaJooptor[_index].jooptor;
  }

  //Suroonu otkoz
  void getNext() {
    log('_index: $_index');
    _index++;
  }

  // noldon bashta
  void reset() {
    _index = 0;
  }
}

final QuizBrain quizBrain = QuizBrain();
