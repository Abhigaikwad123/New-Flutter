

import 'package:flutter/material.dart';

void main(){
  print("Incubators");
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      title: "First App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("First App"),
          backgroundColor: Colors.blue,
          ),
          body: Container(
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
              color: Colors.amber,
              shape: BoxShape.circle,
            ),
          ),
      ),
    );
  }
}