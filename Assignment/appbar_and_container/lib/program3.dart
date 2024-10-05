import 'package:appbar_and_container/main.dart';
import 'package:flutter/material.dart';

class Program3 extends MyApp{
  const Program3({super.key});
    @override  
    Widget build(BuildContext context){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Hello Core2web",
            style: TextStyle(fontSize: 28,
            fontWeight: FontWeight.w900
            ),
            ),
            centerTitle: true,
            backgroundColor: Colors.deepPurple,
          ),
          body: Center(
            child: Container(
              width: 360,
              height: 200,
              color: Colors.blue,
            ),
          ),
        ),
      );

    }
}