import "package:flutter/material.dart";

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
          title: const Text(
            "Netflix Demo",
            style: TextStyle(fontSize: 28,
            fontWeight: FontWeight.w900,
            ),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount:10,
             physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context , int index){
            return  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 const Text(
                  "Action Movies",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                  ),
                  SingleChildScrollView(
                   scrollDirection: Axis.horizontal,
                
                   child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        //margin: EdgeInsets.all(15),
                        width: 200,
                        height: 300,
                      
                        child: Image.network("https://irs.www.warnerbros.com/keyart-jpeg/movies/media/browser/harry_potter_8film_2000x3000.jpg"),
                      ),
                       Container(
                       padding: const EdgeInsets.all(5),
                        width: 200,
                        height: 300,
                        
                        child: Image.network("https://irs.www.warnerbros.com/keyart-jpeg/movies/media/browser/harry_potter_8film_2000x3000.jpg"),
                      ),
                       Container(
                       padding: const EdgeInsets.all(5),
                        width: 200,
                        height: 300,
                        
                        child: Image.network("https://irs.www.warnerbros.com/keyart-jpeg/movies/media/browser/harry_potter_8film_2000x3000.jpg"),
                      ),
                       Container(
                        padding: const EdgeInsets.all(5),
                        width: 200,
                        height: 300,
                        
                        child: Image.network("https://irs.www.warnerbros.com/keyart-jpeg/movies/media/browser/harry_potter_8film_2000x3000.jpg"),
                      ),
                       Container(
                        padding: const EdgeInsets.all(5),
                        width: 200,
                        height: 300,
                       
                        child: Image.network("https://irs.www.warnerbros.com/keyart-jpeg/movies/media/browser/harry_potter_8film_2000x3000.jpg"),
                      ),
                    ],
                   ), 
                  )
              ],
            );
          },
        ),
      ),

    );
  }
}