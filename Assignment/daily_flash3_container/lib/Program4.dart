import "package:flutter/material.dart";

class Program4 extends StatefulWidget{

  const Program4({super.key});
  @override  
  State createState()=> _Program4();
}

class _Program4 extends State{
 
  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Demo",
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w700
        ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
            child:  Container(
              height: 200,
              width: 300,
             
              decoration:   BoxDecoration(
                color:   Colors.white,
                boxShadow: [ BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(0, -10),
                  blurRadius: 10,
                  spreadRadius: 1

                )
                ]

               
              ),
                  
                      
                      ),
           
        ),
    );
  }
}