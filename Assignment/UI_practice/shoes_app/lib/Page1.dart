
import 'package:flutter/material.dart';

class ShoeAppState extends State{
  int count=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shoes", style: TextStyle(
          fontSize: 26,
          color: Colors.indigo
        ),
        ),
        actions: const [
         Icon(Icons.shopping_cart,
          color: Colors.indigo,)
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            //padding: EdgeInsets.only(),
           // height: 430,
            child: Image.asset("assets/shoe.jpg",
            //fit: BoxFit.cover ,
            ),
          ),
          const Padding(
            padding:  EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
            child:   Text("Nike Air Force 1 \"07",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,bottom: 10),
            child: Row(
              children: [
                ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.indigo)
                  ),
                  onPressed: (){},
                  child: const Text("SHOES", style: TextStyle(
                    color: Colors.white,
                    fontSize: 16
                  ),),
                ),
                const SizedBox(width: 10,),
                  ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.indigo)
                  ),
                  onPressed: (){},
                  child: const Text("FOOTWEAR", style: TextStyle(
                    color: Colors.white,
                    fontSize: 16
                  ),),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: const Text("With iconic style and legendary comfort, the AF-1 was made to be worn on repeat. This iteration puts a fresh spin on the hoopsclassic with crisp leather, era-echoing '80s construction and reflective-design Swoosh logos.",
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 66, 64, 64),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, bottom: 15,right: 20),
            child: Row(
              children: [
                const Text("Quantity", style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                ),
                const SizedBox(width: 20,),
                GestureDetector(
                  onTap: () {
                    count--;
                    setState(() {});
                  },
                  child: const Icon(Icons.remove)),
                const SizedBox(width: 20,),
                Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 40,
                  child:  Text("$count", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                  decoration:  BoxDecoration(
                    border: Border.all(),
                  ),
                ),
                const SizedBox(width: 20,),
                GestureDetector(
                  onTap: () {
                    count++;
                    setState(() {});
                  },
                  child: const Icon(Icons.add)
                  ),
              ],
            ),
          ),
          Container(
            margin: const  EdgeInsets.only(left: 20,right: 20),
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: ElevatedButton(
              style:const  ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.indigo)
              ),
              onPressed:(){}, 
              child: const Text("PURCHASE",
              style: TextStyle(fontSize: 20, color: Colors.white),
            
            ),
            ),
          )
        ],
      ),
    );
  }
}