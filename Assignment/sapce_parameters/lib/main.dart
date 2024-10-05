import "package:flutter/material.dart";

void main(){
  runApp(const MyApp());

}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Space Parameters",
          style:  TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.black
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.yellow,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}