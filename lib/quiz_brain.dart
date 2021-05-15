import 'question.dart';

class QuizBrain {
  int _questionIndex = 0;

  List<Question> _questionBank = [
    Question(question: 'Earth is round.', answer: true),
    Question(question: 'India is the best country in the world.', answer: true),
    Question(
        question: 'Youtube is the worst video sharing platform.',
        answer: false),
  ];

  void nextQuestion() {
    if (_questionIndex < _questionBank.length - 1) {
      _questionIndex++;
    }
  }

  bool isFinished() {
    if (_questionIndex == _questionBank.length - 1) {
      return true;
    }
    return false;
  }

  void reset() {
    _questionIndex = 0;
  }

  String getQuestionText() {
    return _questionBank[_questionIndex].question;
  }

  bool getAnswer() {
    return _questionBank[_questionIndex].answer;
  }
}
