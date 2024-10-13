import "package:flutter/material.dart";

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override   
  Widget build(BuildContext context){
    return const MaterialApp(
      home: BottomSheetDemo(),
    );
  }

}
 class BottomSheetDemo extends StatefulWidget{
  const BottomSheetDemo({super.key});
  @override  
  State createState()=> _BottomSheetDemo();
 }

 class _BottomSheetDemo extends State{
        void myBottomSheet(){
          showModalBottomSheet(
            context: context, 
            builder: (context){
              return  Column(
                //mainAxisSize: MainAxisSize.max,
                children: [
                  const Text("My name is Abhay",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
                  Container(
                   //width: MediaQuery.of(context).size.width,
                  height: 300,
                    color: Colors.red,
                  )
                ],
              );
            }
            );
        }

    @override  
    Widget build(BuildContext context){

      return Scaffold(
        appBar: AppBar(
          title: const Text("BottomSheet Demo",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: const Center(
        child: Text("BottomSheet Demo",
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w800,
          color: Colors.red
        ),
        ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            myBottomSheet();
          },
          child: const Icon(Icons.add) ,
        ),
      );
    }
 }
