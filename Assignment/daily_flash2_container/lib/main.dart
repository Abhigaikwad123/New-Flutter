import "package:daily_flash2_container/Program1.dart";
import "package:daily_flash2_container/Program2.dart";
import "package:daily_flash2_container/Program4.dart";
import "package:flutter/material.dart";

import "Program3.dart";
import "Program5.dart";

void main(){
  runApp(const MyApp());

}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override  

  Widget build(BuildContext context){
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Program5(),
    );
  }
}