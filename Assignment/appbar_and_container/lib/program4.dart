import 'package:appbar_and_container/main.dart';
import 'package:flutter/material.dart';

class Program4 extends MyApp{
  const Program4({super.key});
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
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  height: 200,
                  width: 200,
                  color: Colors.red,

                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.yellow,

                ),
              ],
            ),
          ),
        ),
      );

    }
}