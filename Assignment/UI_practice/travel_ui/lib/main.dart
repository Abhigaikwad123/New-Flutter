import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TravelApp(),
    );
  }
}
class TravelApp extends StatefulWidget{
  const TravelApp({super.key});
  @override   
  State createState()=> _TravelAppState();
}

class _TravelAppState extends State{
  Widget popularDest(index){
    return  SingleChildScrollView(
                scrollDirection: Axis.horizontal,
        
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 145,
                          height: 145,
                          alignment: Alignment.center,
                          color: const Color.fromRGBO(233, 237, 248, 1),
                          child: Image.asset("home.png"),
                        ),
                        const SizedBox(height: 5,),
                         Column(
                          children: [
                            Row(
                              children: [
                                const Text("Cancun",
                                style: TextStyle(
                                  fontSize: 14,
                                fontWeight: FontWeight.w600
                                ),
                                ),
                                const Spacer(),
                                Image.asset("card2.jpg")
                              ],
                            ),
                            const Row(
                              children: [
                                Text("Mexico",
                                                          style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(179, 182, 187, 1)
                                                          ),
                                ),
                                Spacer(),
                                 Text("848 Reviews",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(179, 182, 187, 1)
                                ),
                                )
                              ],
                            )
                          ],
                        )

                      ],
                    )
                  ],
                ),
              );
  }
  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Where do you want to travel?",
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        ),
        centerTitle: true,
        backgroundColor:const  Color.fromRGBO(27, 48, 101, 1),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    //border: Border.all(),
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromRGBO(233, 237, 248, 1)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: const Text("Select Destination",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(52, 111, 249, 1)
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Image.asset("assets/Vector.jpg"),
                      )
                    ],
                  )
                ),
                const SizedBox(width: 10,),
               Image.asset("assets/Frame.jpg")
              ],
            ),
          ),
          Padding(
           padding: const EdgeInsets.only(left: 20),
           child: Column(
             children: [
               const  Row(
                  children: [
                     Text("Best Deals",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(0, 0, 0, 1)
                    ),
                    ),
                  ],
                ),
             
         
            Row(
            children: [
              const Text("Sorted by lower price",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(179, 182, 187, 1)
              ),
              ),
              const SizedBox(width: 5,),
            Image.asset("assets/down.jpg")
            
            ],
            ),
        ],
           )
      ),
         SingleChildScrollView(
          scrollDirection: Axis.horizontal,
           child: Row(
               children: [
                 Container(
                  margin:const  EdgeInsets.only(left: 20,top: 20,bottom: 20),
                  padding: const EdgeInsets.all(11),
                  width: 170,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromRGBO(233, 237, 248, 1)
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 114,
                    width: 114,
                    child:  Column(
                      children: [
                        Row(
                          children: [
                            const Text("El Cairo",
                            style: TextStyle(fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black
                            )
                            
                            ),
                            const Spacer(),
                            Image.asset("assets/card2.jpg")
                          ],
                        ),
                         const Row(
                           children: [
                             Text("Egypt",
                                    style: TextStyle(fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(179, 182, 187, 1)
                                    )
                                    
                                    ),
                           ],
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 20, bottom: 20),
                           child: Image.asset("assets/home.png"),
                         ),
                         Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 15,left: 15),
                              child: Container(
                                height: 26,
                                width: 50,
                                alignment: Alignment.center,
                               decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromRGBO(255, 255, 255, 1)
                               ),
                               child: const Text("More",
                               style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(52, 111, 249, 1)
                                
                               ),
                               ),
                              ),
                            ),
                            
                             Container(
                              height: 26,
                              width: 50,
                              alignment: Alignment.center,
                             decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromRGBO(52, 111, 249, 1)
                             ),
                             child: const Text("\$260",
                             style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(255, 255, 255, 1)
               
                             ),
                             ),
                            ),
                          ],
                         )
                      ],
                      
                    ),
                    
                  ),
                 ),
                 Container(
                  margin:const  EdgeInsets.only(left: 10,top: 20,bottom: 20),
                  padding: const EdgeInsets.all(11),
                  width: 170,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromRGBO(233, 237, 248, 1)
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 114,
                    width: 114,
                    child:  Column(
                      children: [
                        Row(
                          children: [
                            const Text("London",
                            style: TextStyle(fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black
                            )
                            
                            ),
                            const Spacer(),
                            Image.asset("assets/card2.jpg")
                          ],
                        ),
                         const Row(
                           children: [
                             Text("England",
                                    style: TextStyle(fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(179, 182, 187, 1)
                                    )
                                    
                                    ),
                           ],
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 20, bottom: 20),
                           child: Image.asset("assets/home.png"),
                         ),
                         Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 15,left: 15),
                              child: Container(
                                height: 26,
                                width: 50,
                                alignment: Alignment.center,
                               decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromRGBO(255, 255, 255, 1)
                               ),
                               child: const Text("More",
                               style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(52, 111, 249, 1)
                                
                               ),
                               ),
                              ),
                            ),
                            
                             Container(
                              height: 26,
                              width: 50,
                              alignment: Alignment.center,
                             decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromRGBO(52, 111, 249, 1)
                             ),
                             child: const Text("\$330",
                             style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(255, 255, 255, 1)
               
                             ),
                             ),
                            ),
                          ],
                         )
                      ],
                      
                    ),
                    
                  ),
                 ),
                 Container(
                  margin:const  EdgeInsets.only(left:  10,top: 20,bottom: 20),
                  padding: const EdgeInsets.all(11),
                  width: 170,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromRGBO(233, 237, 248, 1)
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 114,
                    width: 114,
                    child:  Column(
                      children: [
                        Row(
                          children: [
                            const Text("London",
                            style: TextStyle(fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black
                            )
                            
                            ),
                            const Spacer(),
                            Image.asset("assets/card2.jpg")
                          ],
                        ),
                         const Row(
                           children: [
                             Text("England",
                                    style: TextStyle(fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(179, 182, 187, 1)
                                    )
                                    
                                    ),
                           ],
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 20, bottom: 20),
                           child: Image.asset("assets/home.png"),
                         ),
                         Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 15,left: 15),
                              child: Container(
                                height: 26,
                                width: 50,
                                alignment: Alignment.center,
                               decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromRGBO(255, 255, 255, 1)
                               ),
                               child: const Text("More",
                               style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(52, 111, 249, 1)
                                
                               ),
                               ),
                              ),
                            ),
                            
                             Container(
                              height: 26,
                              width: 50,
                              alignment: Alignment.center,
                             decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromRGBO(52, 111, 249, 1)
                             ),
                             child: const Text("\$330",
                             style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(255, 255, 255, 1)
               
                             ),
                             ),
                            ),
                          ],
                         )
                      ],
                      
                    ),
                    
                  ),
                 ),
                 
               ],
             ),
         ),
         const Padding(
           padding: EdgeInsets.only(left: 20),
           child: Row(
             children: [
               Text("Popular Destinations",
               style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(0, 0, 0, 1)
               ),
               ),
             ],
           ),
         ),
              const Padding(
                padding: EdgeInsets.only(left: 20,bottom: 20),
                child: Row(
                  children: [
                    Text("Sorted by Higher reting",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(179, 182, 187, 1)
                    ),
                    ),
                  ],
                ),
              ),
            
              
           ]
      ),  
      
    );
  }

}

