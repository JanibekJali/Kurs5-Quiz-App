import 'package:quiz_application/quiz_model.dart';

class QuizBrain {
  int _index = 0;
  List<QuizModel> suroolorJanaJooptor = <QuizModel>[
    QuizModel(suroolor: 'Kyrgyzstan egemenduu olko', jooptor: true),
    QuizModel(suroolor: 'Batken Oshto jaigashkan', jooptor: false),
    QuizModel(suroolor: 'Narynda Son Kol jaigashkan  ', jooptor: true),
  ];

  String getQuestion() {
    return suroolorJanaJooptor[_index].suroolor;
  }
}
