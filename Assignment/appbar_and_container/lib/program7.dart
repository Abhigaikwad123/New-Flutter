import 'package:appbar_and_container/main.dart';
import 'package:flutter/material.dart';

class Program7 extends MyApp{
  const Program7({super.key});
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
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //const SizedBox(height: 10,),
                 const Text("Animals...", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),),
                const SizedBox(height: 10,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: 150,
                        height: 300,
                        color: Colors.blue,
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTK0Au6KMF9u-vu2fnUAZZCNLYxOXpfP9SRBQ&s",
                        fit: BoxFit.cover,
                        ),
                        ),
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                        width: 150,
                        height: 300,
                        color: Colors.blue,
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHQ9CQjK8kox2iyII-QT96Qo6F2Wfp11Hkaw&s",
                        fit: BoxFit.cover,
                        ),
                        ),
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                        width: 150,
                        height: 300,
                        color: Colors.blue,
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVVgg2504skdAYRKpm0qIyPUEoxrFt52jAjw&s",
                        fit: BoxFit.cover,
                        ),
                        ),
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                        width: 150,
                        height: 300,
                        color: Colors.blue,
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0SvKzd3rxRZCK2j_pgi8soc9Ja5CN9uPQdw&s",
                        fit: BoxFit.cover,
                        ),
                        ),
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                        width: 150,
                        height: 300,
                        color: Colors.blue,
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGpDq5EUTzheUdWzLTpRuMNuqLEOI3jvqQiQ&s",
                        fit: BoxFit.cover,
                        ),
                        ),
                        
                    ],
                  ),
                ),
              ],
            ),
          ) 
          ),
        );
      

    }
}