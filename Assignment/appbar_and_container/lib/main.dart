
import "package:appbar_and_container/program10.dart";
import "package:appbar_and_container/program2.dart";
import "package:appbar_and_container/program3.dart";
import "package:appbar_and_container/program4.dart";
import "package:appbar_and_container/program5.dart";
import "package:appbar_and_container/program6.dart";
import "package:appbar_and_container/program7.dart";
import "package:appbar_and_container/program8.dart";
import "package:appbar_and_container/program9.dart";
import "package:flutter/material.dart";

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override  
  Widget build(BuildContext context){
    return const Program8();
  }
}