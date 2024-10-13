import "package:flutter/material.dart";

void main(){
 runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override 
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
      home: InfoApp(),
    );
  }
}
class InfoApp extends StatefulWidget{
  const InfoApp({super.key});
  @override  
  State createState()=> _InfoAppState();
}

class _InfoAppState extends State{
  TextEditingController nameController = TextEditingController();
  TextEditingController cmpController = TextEditingController();
  List<Map> data = [];
  String? myName;
  String? cmpName;
  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar:  AppBar(
        title: const Text("Info",
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w800
        ),

        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:  SingleChildScrollView(
      
        child: Column(
          children: [
           const  SizedBox(
              height: 20,
            ),
             Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: nameController,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
              
                ),
                decoration: const InputDecoration(
                  hintText: "Enter Name",
                  hintStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.grey
                  ),
                  border: OutlineInputBorder(),
                  
                ),
              
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: TextField(
                controller: cmpController,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                
                  ),
                  decoration: const InputDecoration(
                    hintText: "Dream Company",
                    hintStyle: TextStyle(
                      fontSize: 25,
                      color: Colors.grey
                    ),
                    border: OutlineInputBorder(),
                    
                  ),
                
                ),
            ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    style:const  ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.blue)
                    ),
                    onPressed:(){
                        myName = nameController.text;
                        cmpName = cmpController.text;
                        data.add({"Name":myName,"cmpName":cmpName});
                        nameController.clear();
                        cmpController.clear();
                        setState(() {});
                        
                    },
                   child: const Text("Submit",
                   style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                   ),
                   )
                   ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: ListView.builder(
                  itemCount: data.length,
                  shrinkWrap: true,
                  physics:const  NeverScrollableScrollPhysics(),
                  itemBuilder: (context , index){
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                          color: Colors.amber
                        ),
                        child: Column(
                          children: [
                           Text("Name: ${data[index]["Name"]}",
                           style:const  TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600, 
                           )
                           ),
                          
                        Text("Comapany Name: ${data[index]["cmpName"]}",
                        style:const  TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600, 
                           ))
                          ]
                        ),
                      ),
                    );
                  }
                ),
              )
          ],
        ),
      )
    );
  }
}