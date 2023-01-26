class QuestionQuizzler{
  List<String> questions=["1. Who invented C++?",
    "2.Which of the following is used for comments in C++?",
    "3.What is virtual inheritance in C++?"];
  List<List<String>> options=[["a)Bjarne Stroustrup","b) Ken Thompson","c) Brian Kernighan","d) Dennis Ritchie "],
    ["a) /* comment */","b) // comment */","c) // comment","d) both // comment or /* comment */"],
    ["a) C++ technique to enhance multiple inheritance", "b) C++ technique to ensure that a private member of the base class can be accessed somehow", "c) C++ technique to avoid multiple inheritances of classes", "d) C++ technique to avoid multiple copies of the base class into children/derived class"
  ]];
  List<int> answers=[0,3,3];
  int getCorrectAnswer(int index){
    return answers[index];
  }
  int nextQuestion(int index){
    index=index+1;
    return index;
  }
  String getOptions(int index){
    String s="";
    for(int i=0;i<4;i++){
      s=s+options[index][i]+'\n';
    }
    return s;
  }
}