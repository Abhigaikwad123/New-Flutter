import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override  

  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CareerApp(),
    );
  }
}
class CareerApp extends StatefulWidget{
  const CareerApp({super.key});

  @override  
  State createState()=> _CareerAppState();
}
class _CareerAppState extends State{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recomended", 
        style:TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w700,
          color: Color.fromRGBO(0, 91, 135, 1),
        ) ,
        ) ,
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios_new),
        actions: [
          Container(
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black, width: 2.0),)
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
             margin: const EdgeInsets.only(top: 10, left: 15,bottom: 10),
              child: const Text("Start a new Career",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.black
                 ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      margin: const EdgeInsets.only(left: 15, right: 5),
                      child: ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll( Color.fromRGBO(0, 91, 135, 1),)
                        ),
                        onPressed: (){},
                        child: const Text("Data Science",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                        ),
                      ),
                    ),
                      Container(
                      height: 60,
                      margin: const EdgeInsets.only( right: 5),
                      child: ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll( Color.fromRGBO(171, 217, 242, 1),)
                        ),
                        onPressed: (){},
                        child: const Text("Machine Learning",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(0, 91, 135, 1,),
                        ),
                        ),
                      ),
                    ),
                      Container(
                      height: 60,
                      margin: const EdgeInsets.only( right: 5),
                      child: ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll( Color.fromRGBO(171, 217, 242, 1),)
                        ),
                        onPressed: (){},
                        child: const Text("Apache Spark",
                        style: TextStyle(
                          fontSize: 20,
                          color:Color.fromRGBO(0, 91, 135, 1,),
                        ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width-20,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                 color: const Color.fromARGB(255, 229, 225, 230),
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    width: 140,
                    height: 140,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset("assets/symbol.jpg",
                      fit: BoxFit.cover,
                      ),
                    ),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(top: 20,left: 10),
                       child: Column(
                        children: [
                          const  SizedBox(
                            width: 230,
                            child:  Text("Data Science",
                            style: TextStyle(fontSize: 25, fontWeight:FontWeight.w500 ),),
                           ),
                         const   SizedBox(
                            width: 230,
                            child: Text("Harvard University",
                            style: TextStyle(fontSize: 15),
                            ),
                           ),
                           const SizedBox(height: 10,),
                          const  SizedBox(
                            width: 230,
                            child: Text("Lorem ipsum dolor sit amet eget nunc dictum est penatibus nunc.",
                            style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                           ),
                           const SizedBox(height: 10,),
                           Padding(
                             padding: const EdgeInsets.only(right: 15),
                             child: Row(
                              children: [
                                Container(
                                 // margin: EdgeInsets.only(right: 100),
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 90,
                                  decoration: const BoxDecoration(
                                   // border: Border.all(),
                                     color: Color.fromRGBO(169, 204, 221, 1)
                                  ),
                                  child: const Text("Data Science",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromRGBO(0, 91, 135, 1,),
                                    fontWeight: FontWeight.w600,
        
                                  ),
                                  ),
                                  ),
                                 const  SizedBox(width: 10,),
                                  Container(
                                  //margin: EdgeInsets.only(right: 100),
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 110,
                                  decoration: const BoxDecoration(
                                    //border: Border.all(),
                                    color: Color.fromRGBO(169, 204, 221, 1)
            
                                  ),
                                  child: const Text("Machine Learning",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(0, 91, 135, 1,),
                                    fontWeight: FontWeight.w600
                                  ),
                                  ),
                                  
                                ),
                              ],
                             ),
                           )
                       
                        ],
                       ),
                     )
                     ],
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Container(
              width: MediaQuery.of(context).size.width-20,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                 color: const Color.fromARGB(255, 229, 225, 230),
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    width: 140,
                    height: 140,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset("assets/symbol.jpg",
                      fit: BoxFit.cover,
                      ),
                    ),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(top: 20,left: 10),
                       child: Column(
                        children: [
                          const  SizedBox(
                            width: 230,
                            child:  Text("AI & ML",
                            style: TextStyle(fontSize: 25, fontWeight:FontWeight.w500 ),),
                           ),
                         const   SizedBox(
                            width: 230,
                            child: Text("Harvard University",
                            style: TextStyle(fontSize: 15),
                            ),
                           ),
                           const SizedBox(height: 10,),
                          const  SizedBox(
                            width: 230,
                            child: Text("Lorem ipsum dolor sit amet eget nunc dictum est penatibus nunc.",
                            style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                           ),
                           const SizedBox(height: 10,),
                           Padding(
                             padding: const EdgeInsets.only(right: 15),
                             child: Row(
                              children: [
                                Container(
                                 // margin: EdgeInsets.only(right: 100),
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 110,
                                  decoration: const BoxDecoration(
                                   // border: Border.all(),
                                     color: Color.fromRGBO(169, 204, 221, 1)
                                  ),
                                  child: const Text("Machine Learning",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromRGBO(0, 91, 135, 1,),
                                    fontWeight: FontWeight.w600,
        
                                  ),
                                  ),
                                  ),
                                 const  SizedBox(width: 10,),
                                  Container(
                                  //margin: EdgeInsets.only(right: 100),
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 90,
                                  decoration: const BoxDecoration(
                                    //border: Border.all(),
                                    color: Color.fromRGBO(169, 204, 221, 1)
            
                                  ),
                                  child: const Text("Decision Tree",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(0, 91, 135, 1,),
                                    fontWeight: FontWeight.w600
                                  ),
                                  ),
                                  
                                ),
                              ],
                             ),
                           )
                       
                        ],
                       ),
                     )
                     ],
                      ),
                    ),
                    const SizedBox(height: 15,),
                    
            Container(
              width: MediaQuery.of(context).size.width-20,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                 color: const Color.fromARGB(255, 229, 225, 230),
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    width: 140,
                    height: 140,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset("assets/symbol.jpg",
                      fit: BoxFit.cover,
                      ),
                    ),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(top: 20,left: 10),
                       child: Column(
                        children: [
                          const  SizedBox(
                            width: 230,
                            child:  Text("Big Data",
                            style: TextStyle(fontSize: 25, fontWeight:FontWeight.w500 ),),
                           ),
                         const   SizedBox(
                            width: 230,
                            child: Text("Harvard University",
                            style: TextStyle(fontSize: 15),
                            ),
                           ),
                           const SizedBox(height: 10,),
                          const  SizedBox(
                            width: 230,
                            child: Text("Lorem ipsum dolor sit amet eget nunc dictum est penatibus nunc.",
                            style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                           ),
                           const SizedBox(height: 10,),
                           Padding(
                             padding: const EdgeInsets.only(right: 15),
                             child: Row(
                              children: [
                                Container(
                                 // margin: EdgeInsets.only(right: 100),
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 90,
                                  decoration: const BoxDecoration(
                                   // border: Border.all(),
                                     color: Color.fromRGBO(169, 204, 221, 1)
                                  ),
                                  child: const Text("Big Data",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromRGBO(0, 91, 135, 1,),
                                    fontWeight: FontWeight.w600,
        
                                  ),
                                  ),
                                  ),
                                 const  SizedBox(width: 10,),
                                  Container(
                                  //margin: EdgeInsets.only(right: 100),
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 110,
                                  decoration: const BoxDecoration(
                                    //border: Border.all(),
                                    color: Color.fromRGBO(169, 204, 221, 1)
            
                                  ),
                                  child: const Text("Apache Spark",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(0, 91, 135, 1,),
                                    fontWeight: FontWeight.w600
                                  ),
                                  ),
                                  
                                ),
                              ],
                             ),
                           )
                       
                        ],
                       ),
                     )
                     ],
                      ),
                    ),
                    const SizedBox(height: 15,),
                    
          Container(
            width: MediaQuery.of(context).size.width-20,
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
               color: const Color.fromARGB(255, 229, 225, 230),
            ),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  width: 140,
                  height: 140,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset("assets/symbol.jpg",
                    fit: BoxFit.cover,
                    ),
                  ),
                  ),
                   Padding(
                     padding: const EdgeInsets.only(top: 20,left: 10),
                     child: Column(
                      children: [
                        const  SizedBox(
                          width: 230,
                          child:  Text("Devops",
                          style: TextStyle(fontSize: 25, fontWeight:FontWeight.w500 ),),
                         ),
                       const   SizedBox(
                          width: 230,
                          child: Text("Harvard University",
                          style: TextStyle(fontSize: 15),
                          ),
                         ),
                         const SizedBox(height: 10,),
                        const  SizedBox(
                          width: 230,
                          child: Text("Lorem ipsum dolor sit amet eget nunc dictum est penatibus nunc.",
                          style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                         ),
                         const SizedBox(height: 10,),
                         Padding(
                           padding: const EdgeInsets.only(right: 15),
                           child: Row(
                            children: [
                              Container(
                               // margin: EdgeInsets.only(right: 100),
                                alignment: Alignment.center,
                                height: 30,
                                width: 90,
                                decoration: const BoxDecoration(
                                 // border: Border.all(),
                                   color: Color.fromRGBO(169, 204, 221, 1)
                                ),
                                child: const Text("Docker",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color.fromRGBO(0, 91, 135, 1,),
                                  fontWeight: FontWeight.w600,

                                ),
                                ),
                                ),
                               const  SizedBox(width: 10,),
                                Container(
                                //margin: EdgeInsets.only(right: 100),
                                alignment: Alignment.center,
                                height: 30,
                                width: 110,
                                decoration: const BoxDecoration(
                                  //border: Border.all(),
                                  color: Color.fromRGBO(169, 204, 221, 1)
    
                                ),
                                child: const Text("Kubernets",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(0, 91, 135, 1,),
                                  fontWeight: FontWeight.w600
                                ),
                                ),
                                
                              ),
                            ],
                           ),
                         )
                     
                      ],
                     ),
                   )
                   ],
                    ),
                  ),
                  const SizedBox(height: 5,),
                ],
              ),
      ),
          );
        
  }
}