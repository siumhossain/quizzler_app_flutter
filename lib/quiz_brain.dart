import 'question.dart';
class QuizBrain{

  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('Bangladesh is a democratic country', false),
    Question('Some cats are actually allergic to humans', true),
    Question('Bangladesh has freedom of speech', false),
    Question('Maximum people in student league are involved in crime', true),
    Question('linux is the best', true),
    Question('Cse is sucks', true),
    Question('Brainless teacher are try to teach in University', true),

  ];
  String getQuestionText(){
    return  _questionBank[_questionNumber].questionText;
  }
  bool getAns(){
    return _questionBank[_questionNumber].questionAns;
  }
  void nextQuestion(){
    if(_questionNumber < _questionBank.length-1 ){
      _questionNumber++;
    }
  }
  bool isFinished(){
    if(_questionNumber >= _questionBank.length - 1){
      return true;
    }
    else{
      return false;
    }
  }
  void reset(){
    _questionNumber = 0;
  }


}