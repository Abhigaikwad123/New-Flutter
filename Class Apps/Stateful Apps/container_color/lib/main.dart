import "package:flutter/material.dart";

void main(){
  runApp(const ContainerAppState());
}

class ContainerAppState extends StatefulWidget{
  const ContainerAppState({super.key});

  @override
  State createState() => _ContainerAppState();

}

class _ContainerAppState extends State{
  bool colorChange= true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container color change"),
          centerTitle: true,
          backgroundColor: (colorChange) ? Colors.blue : Colors.pink,
        ),
        body: Center(
          child: Container(
            width: 250,
            height: 250,
            color: (colorChange) ?  Colors.red : Colors.black,
          ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              if(colorChange==true){
                colorChange=false;
              }
              else{
                colorChange=true;
              }
              setState(() {});

            },
            backgroundColor: Colors.blue,
            child: const Text("change color")
          ),

      ),
    );
  }
}