import "package:flutter/material.dart";

class Program2 extends StatefulWidget{

  const Program2({super.key});
  @override  
  State createState()=> _Program2();
}

class _Program2 extends State{
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
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              alignment: Alignment.center,
           decoration: BoxDecoration(
            border: Border.all(),
            image: const DecorationImage(image: AssetImage("assets/back.jpeg"),
            fit: BoxFit.cover,
            )
           ),
          
          ),
            const Text("Abhay",
           style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Colors.black
           )
           ),
          ]
        ),
      ),
    );
  }
}