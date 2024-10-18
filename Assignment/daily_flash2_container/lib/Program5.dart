import "package:flutter/material.dart";

class Program5 extends StatefulWidget{
    const Program5({super.key});
    @override  
    State createState()=> _Program5();
}


class _Program5 extends State{
    bool colorChange=false;
    bool textChange = false;

    @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Container Demo",
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,

            ),
            ),
            backgroundColor: Colors.blue,
            centerTitle: true,
        ),
        body: Center(
          child: GestureDetector(
            onTap: (){
             colorChange=true;
             textChange= true;
             setState(() {});
            
            },
            onDoubleTap: (){
              colorChange=false;
              textChange=false;
              setState(() {});
            },
            child: Container(
             
                width: 200,
                height: 200,
                alignment: Alignment.center,
              
                color: colorChange? Colors.blue: Colors.red,
                child: textChange? const Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: const Text("Container Tapped", style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500, color: Colors.black) ),
                )  :     const Text("Click Me!",
                                 style: TextStyle(
                                fontSize: 28,
                               fontWeight: FontWeight.w500,
                              color: Colors.black
                ),
                ),
            ),
          ),
        )
    );
  }
}