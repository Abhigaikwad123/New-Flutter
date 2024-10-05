import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override  
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ListView Demo", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900,color: Colors.black),),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          
          children: [
            
            Image.network("https://i.pinimg.com/736x/68/8d/d3/688dd325dbbdc238f4b70caffe77a5af.jpg"),

            const Icon(
             
              Icons.favorite,
              color: Colors.red,
            ),
            const Text(
              "Excellent",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w500,
              ),
            ),
            
            Image.network("https://cdn.pixabay.com/photo/2023/07/24/07/24/flower-wallpaper-8146421_1280.png"),

            GestureDetector(
              onTap: (){
                print("Button Pressed");
              },
              child: Container(
                height: 50,
                color: Colors.amber,
                child: const Text(
                  "press me",
                  
                ),
              ),
            ),

          ],
          ),
      ),
    );

  }
}