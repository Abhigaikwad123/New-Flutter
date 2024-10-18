import "package:flutter/material.dart";

class Program1 extends StatelessWidget{
    const Program1({super.key});

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
                width: 200,
                height: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                    borderRadius: BorderRadius.circular(20)
                
                ),
                child: const Text("Hello",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue
                ),
                ),
            ),
        )
    );
  }
}