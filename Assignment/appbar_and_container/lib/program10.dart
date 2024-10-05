import 'package:appbar_and_container/main.dart';
import 'package:flutter/material.dart';

class Program10 extends MyApp{
  const Program10({super.key});
    @override  
    Widget build(BuildContext context){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Demo App",
            style: TextStyle(fontSize: 28,
            fontWeight: FontWeight.w900
            ),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: Padding(
            padding: const EdgeInsets.all(60),
            child: Container(
              
              height: 300,
              width: 300,
              decoration:  BoxDecoration(
                borderRadius: const BorderRadius.only(topLeft:Radius.circular(20), bottomRight:Radius.circular(20)),
                border: Border.all(color: Colors.red, width: 10),
                color: Colors.yellow,
              ),
            ),
          ) 
          ),
        );
      

    }
}