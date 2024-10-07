
import 'dart:ffi';
import 'dart:js_interop';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main(){
  runApp(const MyApp());

}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home : MyCart(),
    );
  }
  
}
class MyCart extends StatefulWidget{
  const MyCart({super.key});
  @override   
  State createState()=> _MyCartState();
}

class _MyCartState extends State{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My cart", style: TextStyle(
          fontSize: 30,
          color: Colors.indigo,
          fontWeight: FontWeight.w600
        ),
        ),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios_new_sharp),
      ),
      body: Column(
        children: [
          Container(
           padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(left: 10, bottom: 10,right: 10, top: 20),
            width: MediaQuery.of(context).size.width,
            height: 170,
            
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Color.fromARGB(255, 228, 223, 223),
            ),
            child: Row(
              children: [
                 Container(
                  
                  //padding: EdgeInsets.all(20),
                   decoration:  BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   ),
                  child: Image.asset("assets/shoe.jpg"),
                  ),
                     Expanded(
                      child:   Column(
                      children: [
                       const  Padding(
                          padding:  EdgeInsets.only(left: 10,bottom: 5),
                          child:  SizedBox(
                            width: 220,
                             child: Text("Nike Shoes", style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                              ),
                            ),
                           ),
                        ),
                      const  Padding(
                         padding:  EdgeInsets.only(left: 10),
                         child:   SizedBox(
                          width: 220,
                          child: Text("With iconic sytle and legendary comfort, on repeat.",
                          style: TextStyle(fontSize: 15),
                          )
                          ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10,top: 3),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             SizedBox(
                              width: 100,
                               child: Container(
                                
                                //margin: const EdgeInsets.only(top: 5,left: 10),
                                height: 40,
                                width: 100,
                                alignment: Alignment.centerLeft,
                                 child: const Text("\$570.00",
                                  style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w600
                                ),
                               ),
                               
                               ),
                              
                              ),
                               Row(
                                  children: [
                                const Icon(Icons.remove),
                                const SizedBox(width: 5,),
                                Container(
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all()
                                  ),
                                  child: const Text("1",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
                                ),
                                const SizedBox(width: 5,),
                                const  Icon(Icons.add),
                                ]
                                ),
                              
                           ],
                         ),
                       ),
                       
                            
                   ],
                   ),
                 )
                ],
         ),
    ),
            Container(
           padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(left: 10, bottom: 10,right: 10, top: 5),
            width: MediaQuery.of(context).size.width,
            height: 170,
            
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Color.fromARGB(255, 228, 223, 223),
            ),
            child: Row(
              children: [
                 Container(
                  
                  //padding: EdgeInsets.all(20),
                   decoration:  BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   ),
                  child: Image.asset("assets/shoe.jpg"),
                  ),
                     Expanded(
                      child:   Column(
                      children: [
                       const  Padding(
                          padding:  EdgeInsets.only(left: 10,bottom: 5),
                          child:  SizedBox(
                            width: 220,
                             child: Text("Nike Shoes", style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                              ),
                            ),
                           ),
                        ),
                      const  Padding(
                         padding:  EdgeInsets.only(left: 10),
                         child:   SizedBox(
                          width: 220,
                          child: Text("With iconic sytle and legendary comfort, on repeat.",
                          style: TextStyle(fontSize: 15),
                          )
                          ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10,top: 3),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             SizedBox(
                              width: 100,
                               child: Container(
                                
                                //margin: const EdgeInsets.only(top: 5,left: 10),
                                height: 40,
                                width: 100,
                                alignment: Alignment.centerLeft,
                                 child: const Text("\$570.00",
                                  style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w600
                                ),
                               ),
                               
                               ),
                              
                              ),
                               Row(
                                  children: [
                                const Icon(Icons.remove),
                                const SizedBox(width: 5,),
                                Container(
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all()
                                  ),
                                  child: const Text("1",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
                                ),
                                const SizedBox(width: 5,),
                                const  Icon(Icons.add),
                                ]
                                ),
                              
                           ],
                         ),
                       ),
                       
                            
                   ],
                   ),
                 )
                ],
         ),
    ), 
                      const Spacer(), 

                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        color: Colors.amber,
                      )
                    ], 
                  ),
                  
          
        
        
      );
        
  
  }
}