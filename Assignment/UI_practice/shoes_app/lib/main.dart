import "package:flutter/material.dart";
import "package:shoes_app/MyCart.dart";
import "package:shoes_app/Page1.dart";


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShoeApp(),
    );
  }
}

class ShoeApp extends StatefulWidget{
  const ShoeApp({super.key});
  @override  

  State createState() => Mycart();
}


