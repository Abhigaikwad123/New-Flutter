import "package:flutter/material.dart";

class Program3 extends StatefulWidget{

  const Program3({super.key});
  @override  
  State createState()=> _Program3();
}

class _Program3 extends State{
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
            child:  GestureDetector(
              onTap: (){
                borderColorChange=true;
                setState(() {});
              },
              child: Container(
                height: 200,
                width: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                  color: borderColorChange? Colors.green: Colors.red,
                  width: 5
                  )
                ),
                        
                        
                        ),
            ),
           
        ),
    );
  }
}