import "package:flutter/material.dart";

class Program1 extends StatefulWidget{

  const Program1({super.key});
  @override  
  State createState()=> _Program1();
}

class _Program1 extends State{
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
          padding: EdgeInsets.all(20),
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            border: Border.all()
          ),
          child: Image.asset("assets/tiger.jpeg",
          fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}