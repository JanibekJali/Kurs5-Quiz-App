import '../../model/quiz_model.dart';

class QuizData {
  List<QuizModel> questionsAnswers = <QuizModel>[
    QuizModel(suroolor: 'Bishkek Oshko karashtuu', jooptor: false),
    QuizModel(suroolor: 'Batken Oshto jaigashkan', jooptor: false),
    QuizModel(suroolor: 'Narynda Son Kol jaigashkan  ', jooptor: true),
    QuizModel(suroolor: 'Steve jobs Mi-nin eesibi  ', jooptor: false),
  ];
}

final QuizData quizData = QuizData();
