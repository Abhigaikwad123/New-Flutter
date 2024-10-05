import "package:flutter/material.dart";

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{

  const MyApp({super.key});
  @override  
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  QuizApp(),
    );
  
  }
}

class QuizApp extends StatefulWidget{
  const QuizApp({super.key});
  @override  
  State createState() => _QuizAppState();

}

class _QuizAppState extends State{

  List<Map> allQuestions = [
    {
      "questions": "Who is the founder of Microsoft?",
      "options": ["Steve Jobs", "Bill Gates", "Lary Page", "Elon Musk"],
      "correctAnswer": 1  
    },
    {
      "questions": "Who is the founder of Google?",
      "options": ["Steve Jobs", "Bill Gates", "Lary Page", "Elon Musk"],
      "correctAnswer": 2
    },
    {
      "questions": "Who is the founder of SpaceX?",
      "options": ["Steve Jobs", "Bill Gates", "Lary Page", "Elon Musk"],
      "correctAnswer": 3
    },
    {
      "questions": "Who is the founder of Apple?",
      "options": ["Steve Jobs", "Bill Gates", "Lary Page", "Elon Musk"],
      "correctAnswer": 0  
    },
    {
      "questions": "Who is the founder of Meta?",
      "options": ["Steve Jobs", "Mark Zukerberg", "Lary Page", "Elon Musk"],
      "correctAnswer": 1  
    },
  ];
  int currentQuestionIndex = 0;
  int selectedAnswerIndex = -1;
  int counter =0;
  WidgetStateProperty<Color?> checkAnswer(int answerIndex){
    if(selectedAnswerIndex != -1){
      if(answerIndex == allQuestions[currentQuestionIndex]["correctAnswer"]){
        return const WidgetStatePropertyAll(Colors.green);
      }
      else if(selectedAnswerIndex == answerIndex){
        return const WidgetStatePropertyAll(Colors.red);
      }
      else{
        return const WidgetStatePropertyAll(null);
      }

    }
    else{
      return const WidgetStatePropertyAll(null);
    }
  }
  bool questionPage = true;

  @override  
  Widget build(BuildContext context){
    return isQuestionScreen();
  }
    Scaffold isQuestionScreen(){
      if(questionPage == true){
        return Scaffold(
      appBar: AppBar(
      title: const Text("Quiz App",
      style: TextStyle(fontSize: 28,
      fontWeight: FontWeight.w900,
      color: Colors.black
      ), 
      ),
      centerTitle: true,
      backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
         const SizedBox(
            height:30,
          ),
          //Question number
        Row(
            children: [
              const SizedBox(
                width: 125,
              ),
              Text(
                "Question : ${currentQuestionIndex + 1}/${allQuestions.length}",
                style: const TextStyle(
                  fontSize: 30,
                fontWeight: FontWeight.w700
                ),
            ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          //Questions
          SizedBox(
            width: 380,
            height: 50,
            child: Text(
              allQuestions[currentQuestionIndex]["questions"],
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),

          //option1
          SizedBox(
            height: 50,
            width: 350,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(0),
              ),
              onPressed: () {
                if(selectedAnswerIndex == -1){
                  selectedAnswerIndex = 0;
                  setState(() {});
                }
              },
              child: Text("A. ${allQuestions[currentQuestionIndex]["options"][0]}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          //option2
          SizedBox(
            height: 50,
            width: 350,
            child: ElevatedButton(
             style: ButtonStyle(
                backgroundColor: checkAnswer(1),
              ),
              onPressed: () {
                if(selectedAnswerIndex == -1){
                  selectedAnswerIndex = 1;
                  setState(() {});
                }
              },
              child: Text("B. ${allQuestions[currentQuestionIndex]["options"][1]}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          //option3
          SizedBox(
            height: 50,
            width: 350,
            child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: checkAnswer(2),
              ),
              onPressed: () {
                if(selectedAnswerIndex == -1){
                  selectedAnswerIndex = 2;
                  setState(() {});
                }
              },
              child: Text("C. ${allQuestions[currentQuestionIndex]["options"][2]}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          //option4
          SizedBox(
            height: 50,
            width: 350,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(3),
              ),
              onPressed: () {
                if(selectedAnswerIndex == -1){
                  selectedAnswerIndex = 3;
                  setState(() {});
                }
              },
              child: Text("D. ${allQuestions[currentQuestionIndex]["options"][3]}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              ),
            ),
          ),
         /* const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              SizedBox(
                child: ElevatedButton(
                  onPressed: (){
                    if(currentQuestionIndex < allQuestions[currentQuestionIndex]["correctAnswer"]){
                      currentQuestionIndex--;
                    }
                  },
                  child: const Icon(Icons.arrow_back,
                  color: Colors.orange,
                  ) ,
                ),
              )
            ],
          )*/
          ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(selectedAnswerIndex == allQuestions[currentQuestionIndex]["correctAnswer"]){
              counter++;
            }
          if(selectedAnswerIndex != -1){
            if(currentQuestionIndex < allQuestions.length-1){
              currentQuestionIndex++;
            }
            else{
              questionPage=false;
            }
             selectedAnswerIndex = -1;
            setState(() {});
          }
            
           
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.forward,
        color: Colors.orange
        ), 
      ),
   
   
    );
  }
    else{
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz Result",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network("https://static.vecteezy.com/system/resources/previews/019/013/598/non_2x/medal-awards-and-trophies-png.png",
              height: 300,
              ),
              const SizedBox(height: 30),
              const Text(
              "Congratulations!!!",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
              ),
              const SizedBox(height: 20,),
               Text("Score: $counter/${allQuestions.length}",
               style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Colors.black,
               ),
               ),
               const SizedBox(
                height: 20,
               ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                 
                  SizedBox(
                    width: 380,
                    height: 50,
                 child:  ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blue),
                  ),
                onPressed: (){
                  questionPage=true;
                  setState(() {});
                  selectedAnswerIndex=-1;
                  currentQuestionIndex=0;
                  counter=0;
                },
                child: const Text("Restart",
                style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w800,
                color: Colors.black,
                ),
                ),
                
               ),
              )
              ],
               ),
              ],
          ),
        ),
       
      );

    }

  }

}


