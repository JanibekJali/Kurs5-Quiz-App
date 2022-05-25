import 'package:quiz_application/data/services/quiz_service.dart';

class QuizRepo {
  String getQuestion() {
    return quizService.getQuestion();
  }

  void getNext() {
    quizService.getNext();
  }

  bool getAnswers() {
    return quizService.getAnswers();
  }

  void reset() {
    quizService.reset();
  }
}

final QuizRepo quizRepo = QuizRepo();
