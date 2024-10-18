import "package:flutter/material.dart";

class Program4 extends StatelessWidget{
    const Program4({super.key});

    @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Container Demo",
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,

            ),
            ),
            backgroundColor: Colors.blue,
            centerTitle: true,
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(10),
              width: 300,
              height: 150,
              //alignment: Alignment.center,
              decoration:  BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 197, 34, 88), width: 5),
                  borderRadius:const  BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
                  color: Color.fromARGB(255, 223, 145, 171)
              
              ),
              child: const Text("Abhay Gaikwad",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Colors.black
              ),
              ),
          ),
        )
    );
  }
}