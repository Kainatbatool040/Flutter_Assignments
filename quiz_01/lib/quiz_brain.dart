import 'package:quiz_01/question.dart';
import 'dart:math';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('A', true),
    Question('B', false),
    Question('C', true),
    Question('D', true),
    Question('E', true),
    Question('F', true),
    Question('G', false),
    Question('H', true),
    Question('I', false),
    Question('J', true),
    Question('K', true),
    Question('L', true),
    Question('M', true),
  ];
  //Create Next Question Function
  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber ++;
    }
  }

  void previousQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber --;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].control;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }
  void reset() {
    _questionNumber = 0;
  }
}
