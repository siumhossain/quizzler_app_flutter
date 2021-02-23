import 'package:flutter/material.dart';
import 'quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();
int questionNumber = 0;
void main() => runApp(Quizzler());
class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}
class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> score= [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(quizBrain.questionBank[questionNumber].questionText,textAlign: TextAlign.center,style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
              ),
              ),
            ),
          ),
        ),
        Expanded(
          child:
          Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: (){
                bool correctAns = quizBrain.questionBank[questionNumber].questionAns;
                if (correctAns == true){
                  print('right ans');
                }
                else{
                  print('wrong');
                }
                setState(() {
                  questionNumber++;
                });
                //function
              },
            ),
        ),
        ),
        Expanded(
          child:
          Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: (){
                bool correctAns = quizBrain.questionBank[questionNumber].questionAns;
                if (correctAns == false){
                  print('right ans');
                }
                else{
                  print('wrong');
                }
                setState(() {
                  questionNumber++;
                  
                }); //function
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: score,
          ),
        )
      ],
    );

  }
}

