import "package:flutter/material.dart";

void main(){
  runApp(const PlayerApp());
}

class PlayerApp extends StatefulWidget{
  const PlayerApp({super.key});

  @override   
  State createState() => _PlayerAppState();
  
  }

class _PlayerAppState extends State{
  List playerList =[
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdoS6qyraVo53-j7qdDkkB2UfZ0cC9e0WzzQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzm2PpXFUrPZ1eb0WQVrcXuJzCcPc65Aht7w&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjVgvazluIzHgFL7CI6emA-OK7fyfOF--0Ug&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5MVt2B5udFNhfw8ZeC_cJiOwAPdO7fCZlZA&s"
  ];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: const Text("Player App"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          child: Image.network(playerList[index]),

        ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
            if(index < playerList.length-1){
              index++;
            }
            else{
              index=0;
            }
            setState(() {});
        },
        backgroundColor: Colors.blue,
        child: const Text("Next"),

        ),


    ),
    );

  }
}