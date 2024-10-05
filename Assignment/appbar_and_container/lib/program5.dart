import 'package:appbar_and_container/main.dart';
import 'package:flutter/material.dart';

class Program5 extends MyApp{
  const Program5({super.key});
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
          body: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  height: 150,
                  width: 150,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbx8uWU9b_3q9-s_VWri2C0xjH7Vwkd4GXnA&s",
                  fit: BoxFit.cover,
                  ),
                  color: Colors.yellow,
                  ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  height: 150,
                  width: 150,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTK0Au6KMF9u-vu2fnUAZZCNLYxOXpfP9SRBQ&s",
                  fit: BoxFit.cover,
                  ),
                  color: Colors.blue,
                ),
                 Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  height: 150,
                  width: 150,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5FVa0D-qa5ygpy_pJb6NnlWtXpFfJQ17BkQ&s",
                  fit: BoxFit.cover,
                  ),
                  color: Colors.red,
              ),
              ],
            ),
          ),
        ),
      );

    }
}