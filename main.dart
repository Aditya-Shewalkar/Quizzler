import 'package:flutter/material.dart';
import 'package:quizzler_app/questions.dart';

QuestionQuizzler queList=QuestionQuizzler();

void main() {
  runApp(
    const Quizzler(),
  );
}

//List questions=["1.Are you real?","2.Are you really real?","3.Are you really really real"];

class Quizzler extends StatelessWidget {
  const Quizzler({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quizzler',
      debugShowCheckedModeBanner: false,
      //color: Colors.black54,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Quizzler",style: TextStyle(fontSize: 28),)),
          backgroundColor: Colors.black26,
        ),
        backgroundColor: Colors.black12,
        body: const SafeArea(
            child:
                QuizPage(),
        ),
      )
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

int num=0;

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [
    //const Icon(Icons.check,color: Colors.green,),
    //const Icon(Icons.close,color: Colors.red,)
  ];
  @override
  Widget build(BuildContext context) {
    return
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(queList.questions[num],
            style:const TextStyle(
              color: Colors.white54,
              fontSize: 30,
            ) ,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                color: Colors.white60,
                child: TextButton(
                  onPressed: (){
                    print("Op1 button pressed\n");
                    setState(() {
                      if(queList.getCorrectAnswer(num)==0){
                        scoreKeeper.add(const Icon(Icons.check,color: Colors.green,));
                      }
                      else{
                        scoreKeeper.add(const Icon(Icons.close,color: Colors.red,));
                      }
                      num=queList.nextQuestion(num);
                    });
                  },
                  child: Center(
                      child: Text(queList.options[num][0],
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 25
                        ),
                      )
                  ),
                ),
              ),
              Container(
                color: Colors.white60,
                child: TextButton(
                    onPressed: (){
                      print("Op2 button pressed\n");
                      setState(() {
                        if(queList.getCorrectAnswer(num)==1){
                          scoreKeeper.add(const Icon(Icons.check,color: Colors.green,));
                        }
                        else{
                          scoreKeeper.add(const Icon(Icons.close,color: Colors.red,));
                        }
                        num=queList.nextQuestion(num);
                      });
                    },
                    child: Center(
                        child: Text(queList.options[num][1],
                          style:const TextStyle(
                              color: Colors.white,
                              fontSize: 25
                          ),
                        )
                    )
                ),
              ),
              Container(
                color: Colors.white60,
                child: TextButton(
                    onPressed: (){
                      print("Op3 button pressed\n");
                      setState(() {
                        if(queList.getCorrectAnswer(num)==2){
                          scoreKeeper.add(const Icon(Icons.check,color: Colors.green,));
                        }
                        else{
                          scoreKeeper.add(const Icon(Icons.close,color: Colors.red,));
                        }
                        num=queList.nextQuestion(num);
                      });
                    },
                    child: Center(
                        child: Text(queList.options[num][2],
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 25
                          ),
                        )
                    )
                ),
              ),
              Container(
                color: Colors.white60,
                child: TextButton(
                    onPressed: (){
                      print("Op4 button pressed\n");
                      setState(() {
                        if(queList.getCorrectAnswer(num)==3){
                          scoreKeeper.add(const Icon(Icons.check,color: Colors.green,));
                        }
                        else{
                          scoreKeeper.add(const Icon(Icons.close,color: Colors.red,));
                        }
                        num=queList.nextQuestion(num);
                      });
                    },
                    child: Center(
                        child: Text(queList.options[num][3],
                          style:const TextStyle(
                              color: Colors.white,
                              fontSize: 25
                          ),
                        )
                    )
                ),
              ),
              Row(
                children: scoreKeeper,
              )
            ],
          )
        ],
      );
  }
}
