import "package:flutter/material.dart";

class Program5 extends StatefulWidget{

  const Program5({super.key});
  @override  
  State createState()=> _Program5();
}

class _Program5 extends State{
  bool borderColorChange=false;
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
            child: Container(
              height: 300,
              width: 300,
              decoration:  BoxDecoration(
                border: Border.all(),
                shape: BoxShape.circle,
                gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [
                    0.5,0.5
                  ],
                  colors: [
                    Colors.red,
                    Colors.blue
                  ]
                )
              ),
            ),
           
        ),
    );
  }
}