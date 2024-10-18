import "package:flutter/material.dart";

class Program2 extends StatelessWidget{
    const Program2({super.key});

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
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
              width: 100,
              height: 100,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      color: Colors.red,
                      width: 5,
                    )
                  )
                  //borderRadius: BorderRadius.circular(20)
              
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