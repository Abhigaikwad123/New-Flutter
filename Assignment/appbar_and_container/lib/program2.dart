import 'package:appbar_and_container/main.dart';
import 'package:flutter/material.dart';

class Program2 extends MyApp{
  const Program2({super.key});
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
            backgroundColor: Colors.yellow,
            actions: const [
             
              Icon(Icons.forward,
              size: 50,
              color: Colors.black,
              )
            ],
        
          ),
        ),
      );

    }
}