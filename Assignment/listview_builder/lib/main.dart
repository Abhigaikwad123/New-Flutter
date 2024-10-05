import "package:flutter/material.dart";


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override  
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ListView builder Demo", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900,color: Colors.black),),
          centerTitle: true,
          backgroundColor: Colors.blue,
          
        ),
        body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 30,
         physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index){
            return Text(
              "Index: $index",
              style:const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            );
          },
        ),
      ),
    );

  }
}