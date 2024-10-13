import "dart:math";

import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter_svg/flutter_svg.dart";

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
      const MyApp({super.key});
      @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ToDoApp(),
      );
  }
}
class ToDoApp extends StatefulWidget{
  @override  

  State createState()=> _ToDoAppState();
}
class _ToDoAppState extends State{
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  String?  title;
  String? desc;
  String? date;
  List<Map> data=[];
  List<Color> colorList = [const Color.fromRGBO(250, 232, 232, 1),
  const Color.fromRGBO(232, 237, 250, 1),
  const Color.fromRGBO(250, 249, 232, 1),
  const Color.fromRGBO(250, 232, 250, 1),
  ];
      void myBottomSheet(){
       showModalBottomSheet(
        
        context: context, 
        builder: (context){
          return Padding(
            padding:  EdgeInsets.only(bottom:  MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              //padding: EdgeInsets.only(bottom:   MediaQuery.of(context).viewInsets.bottom,),
                 width: MediaQuery.of(context).size.width,
                  height: 370,
                 // alignment: Alignment.topCenter,
                  child:   Column(
                     children: [
                       const ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)
                  ),
                                ),
                      const  Text("Create To-Do",
                      style: TextStyle(
                      
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                      ),
                    
                        const Padding(
                          padding: EdgeInsets.only(top: 10, left: 10),
                          child: Row(
                             children: [
                                Text("Title",
                                style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(0, 139, 148,1)
                                ),
                               ),
                             ],
                           ),
                        ),
                        Padding(
                         padding: const EdgeInsets.only(
                         left: 10, right: 10
                         ),
                         child:  TextField(
                          controller: titleController,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(0, 0, 0, 0.7)
                          ),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)),),
                            enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromRGBO(0, 139, 148, 1),
                  width: 1,
                  ),
                  ),
                                
                          ),
                         ),
                       ), 
                       const Padding(
                          padding: EdgeInsets.only(top: 10, left: 10),
                          child: Row(
                             children: [
                                Text("Description",
                                style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(0, 139, 148,1)
                                ),
                               ),
                             ],
                           ),
                        ),
                        Padding(
                         padding: const EdgeInsets.only(left: 10, right: 10),
                         child:  TextField(
                          controller: descController,
                            style:const  TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(0, 0, 0, 0.7)
                            ),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)),),
                              enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(0, 139, 148, 1),
                            width: 1,
                               ),
                              ),
                             ),
                           ),
                          ),
                          const Padding(
                          padding: EdgeInsets.only(top: 10, left: 10),
                          child: Row(
                             children: [
                                Text("Date",
                                style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(0, 139, 148,1)
                                ),
                               ),
                             ],
                           ),
                        ),
                          Padding(
                           padding: const EdgeInsets.only(left: 10,right: 10),
                           child:  TextField(
                            controller: dateController,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(0, 0, 0, 0.7)
                            ),
                             decoration: InputDecoration(
                              border:const  OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)),),
                              enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Color.fromRGBO(0, 139, 148, 1),
                              width: 1,
                              ),
                              ),
                                 suffix: SvgPicture.asset("assets/Icons/calender.svg"),    
                            ),
                            
                           ),
                         ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: (){
                            title= titleController.text;
                            desc = descController.text;
                            date = dateController.text;
                            data.add({"Title": title,"Description": desc,"Date":date});
                            titleController.clear();
                            descController.clear();
                            dateController.clear();
                            setState(() {});
                            
                          },
                        child: Container(
                          width: 300,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(0, 139, 148, 1) ,
                          ),
                          child: const Text("Submit",
                          style:TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(255, 255, 255, 1)
                          ),
                          ),
                          
                        ),
                        ),
                      )
                            
                    ],
                  ),
                ),
          );
        }
        
        );
      }
    
      @override  
    
      Widget build(BuildContext context){
          return Scaffold(
            appBar: AppBar(
              title: const Text("To-do list",
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
              
              ) ,
              backgroundColor:const  Color.fromRGBO(2, 167, 177, 1),
            ),
            body: ListView.builder(
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (BuildContext context , int index){
                return Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: 25,bottom: MediaQuery.of(context).viewInsets.bottom ),
                      child: Container(
                        width: MediaQuery.of(context).size.width-30,
                        height: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          
                          color: colorList[index%4],
                          
                        ),
                        
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    
                                    height: 60,
                                    width: 60,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                     
                                    ),
                                    child: Image.asset("assets/home.png",
                                    
                                    ),
                                  ),
                                  const SizedBox(width: 10,),
                                 Padding(
                                   padding:  const EdgeInsets.all(5),
                                   child:   Column(
                                      children: [
                                       SizedBox(
                                        width: 280,
                                         child:  Expanded(
                                           child: Text(data[index]["Title"],
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight:FontWeight.w600,
                                              
                                              ),
                                            ),
                                         ),
                                       ),
                                      const  SizedBox(height: 12,),
                                         SizedBox(
                                          width: 280,
                                          child: Expanded(
                                            child: Text( data[index]["Description"],
                                            style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromRGBO(84, 84, 84, 1),
                                              
                                              
                                            ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                 )
                                ],
                              ),
                             const  SizedBox(height:10 ,),
                             Row(
                                children: [
                                    Text(data[index]["Date"],
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(132, 132, 132,1)
                                    
                                  ),
                                  ),
                                 const  Spacer(),
                                  GestureDetector(
                                    onTap: (){
                                      myBottomSheet();
                                      setState(() {});
                                    },
                                    child: SizedBox(
                                      width: 16,
                                      height: 16,
                                      child: SvgPicture.asset("assets/Icons/edit.svg"),
                                    ),
                                  ),
                                  const SizedBox(width: 20 ,),
                                    GestureDetector(
                                      onTap: (){
                                        data.removeAt(index);
                                        setState(() {});
                                      },
                                    child: SizedBox(
                                      width: 16,
                                      height: 16,
                                      child: SvgPicture.asset("assets/Icons/delete.svg"),
                                    ),
                                  ),
                                  
                                ],
                              )
                            ],
                          ),
                        ),
                        
                      ),
                    )
                  ],
                );
            
              },
            ),
            floatingActionButton: Container(
              height: 52,
              width: 52,
              child: FloatingActionButton(
                
                onPressed: (){
                    myBottomSheet();
                },
                shape: const CircleBorder(),
                backgroundColor:const  Color.fromRGBO(0, 139, 148, 1),
                child: const Icon(Icons.add,
                color: Colors.white,
                size: 50,
                )
                
              ),
            ),
            
          );

      }
}
