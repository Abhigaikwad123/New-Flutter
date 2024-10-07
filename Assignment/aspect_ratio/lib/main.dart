import "package:flutter/material.dart";

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});
  @override  

  State createState()=> _MyAppState();
}

class _MyAppState extends State{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Aspect Ratio Demo",
         style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
         ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            color: Colors.amber,
            child: Image.network("https://g4.img-dpreview.com/09BAC962856C4C6DACFB4AC150AF2624.jpg"),
          ),
        ),
      ),
    );
  }
}