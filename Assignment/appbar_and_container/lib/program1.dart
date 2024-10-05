import 'package:appbar_and_container/main.dart';
import 'package:flutter/material.dart';

class Program1 extends MyApp{
  const Program1({super.key});
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
            //centerTitle: true,
            backgroundColor: Colors.blue,
            actions: const [
              Icon(Icons.add,
              color: Colors.black,
              size: 50,
              ),
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