import "package:flutter/material.dart";

void main(){
  runApp(const Myapp());
}

class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Column Demo",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w900,
            color: Colors.black,
            ),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          
          child: Column(
        
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
         
            children: [
              Image.network("https://cdn.britannica.com/34/212134-050-A7289400/Lionel-Messi-2018.jpg"),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              Image.network("https://www.reuters.com/resizer/v2/7NBXJ3TU5JL7NHRRJJDS3U3WDY.jpg?auth=1fbb3b5f030c1cbb9db6a9c423e79c243406af432313f1cc35f7076761f0651b&width=480&height=600&smart=true"),
              Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb-NGEQDekk2BwsllLjk4tcIM_BPIzXECdsg&s"),
              Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}