import 'package:quiz_application/data/quizs/quiz_data.dart';

class QuizService {
  int _index = 0;

  String getQuestion() {
    if (_index < quizData.questionsAnswers.length) {
      return quizData.questionsAnswers[_index].suroolor;
    } else {
      return 'Ayagina chykty';
    }
  }

  bool getAnswers() {
    return quizData.questionsAnswers[_index].jooptor;
  }

  void getNext() {
    _index++;
  }

  void reset() {
    _index = 0;
  }
}

final QuizService quizService = QuizService();
