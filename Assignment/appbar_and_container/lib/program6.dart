import 'package:appbar_and_container/main.dart';
import 'package:flutter/material.dart';

class Program6 extends MyApp{
  const Program6({super.key});
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
          body: ListView.builder(

                itemCount: 10,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index){
                  return Column(
                    
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        color: Colors.red,
                        margin: const EdgeInsets.only(bottom: 10),
                      )
                    ],
                  );
                },
          ),
        ),
      );

    }
}