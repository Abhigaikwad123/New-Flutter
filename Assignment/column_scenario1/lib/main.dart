import "package:flutter/material.dart";

void main(){
  runApp(const MyAPP());
}

class MyAPP extends StatelessWidget{
  const MyAPP({super.key});

  @override   
  Widget build(BuildContext context){

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Column Demo",
          style:  TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.yellow,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.red,
                )
              ],
            ),
          )
        ),
      
      );

    
    
  }

}