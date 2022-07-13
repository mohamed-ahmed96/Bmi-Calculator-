import 'dart:math';

import 'package:bmi_calculater/result_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);
  

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}




class _HomeScreenState extends State<HomeScreen> {
  double height = 120;
  int age = 25;
  int weight = 70;
  bool isMale = true;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF9A825),
        title: const Center(child: Text("BMI Calculator",textAlign: TextAlign.center,style: TextStyle(color: Colors.black),)),
      ),
      body: Container(
        width: double.infinity,
         color: const Color(0xFF03A9F4),

       child: Column(
          children: [
         Expanded(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               children: [
             Expanded(
               child: GestureDetector(
                 onTap: (){
                   setState(() {
                     
                   });
                   isMale=true;
                 },
                 child: Container(
                   decoration:BoxDecoration(
                     color:isMale? Colors.amberAccent:Colors.black87,
                     borderRadius: BorderRadius.circular(20),

                   ),
                   child: Column(
                     children: const [
                       Icon(Icons.male,size: 140,color: Colors.red,),

                       Text("MALE",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,),)
                     ],
                   ),
                 ),
               ),
             ),
              const SizedBox(width: 20,),
             Expanded(
               child: GestureDetector(
                 onTap: (){
                   setState(() {

                   });
                   isMale=false;
                 },
                 child: Container(
                   decoration:BoxDecoration(
                     color: isMale? Colors.black87:Colors.amberAccent,
                     borderRadius: BorderRadius.circular(20),

                   ),
                   child: Column(
                     children: const [
                       Icon(Icons.female,size: 140,color: Colors.red,),

                       Text("FEMALE",
                         style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,),)
                     ],
                   ),
                 ),
               ),
             ),

             ],

             ),
           ),
         ),
         Expanded(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
                 decoration:BoxDecoration(
                   color: Colors.black87,
                   borderRadius: BorderRadius.circular(20),

                 ),child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Expanded(
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           const Text("HEIGHT",style:
                           TextStyle(color: Colors.white,fontSize: 40),),
                            Text("${height.round()}",style:
                           const TextStyle(color: Colors.white,fontSize: 40),),
                           Slider(
                             activeColor:Color(0xFFF9A825) ,

                             onChanged: (double value) {
                               setState(() {

                               });
                               height=value;
                               print(value);
                             },
                             value:height ,
                             max: 220,
                             min: 100,


                           )
                         ],
                       ),
                     )
                   ],

                 )),
           ),
         ),
         Expanded(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(

                 child: Row(
                   children: [
                     Expanded(child: Container
                       (
                       child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                       const Text("AGE",
                         style: TextStyle(fontSize: 40,color: Colors.white),),
                        Text("$age",
                         style:const TextStyle(fontSize: 40,color: Colors.white),),

                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                          FloatingActionButton(onPressed: (){
                            age--;
                            setState(() {

                            });
                          },

                          child:Icon(Icons.remove,size: 40,),
                            backgroundColor:Colors.amberAccent,
                          heroTag: 1,
                            mini: true,
                          ),

                          const SizedBox(width: 40,),

                          FloatingActionButton(onPressed: (){
                            age++;
                            setState(() {

                            });
                          },heroTag: 2,
                            mini: true,

                            child:const Icon(Icons.add,size: 40,),
                            backgroundColor:Colors.amberAccent,

                          ),

                           ],

                         )
                       ],
                     ),
                       decoration:BoxDecoration(
                         color: Colors.black87,
                         borderRadius: BorderRadius.circular(20),

                       ),
                     ),),

                     const SizedBox(width: 30,),

                     Expanded(child: Container(
                       child:
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("WEIGHT",
                            style: TextStyle(fontSize: 40,color: Colors.white),),
                           Text("$weight",
                            style:const TextStyle(fontSize: 40,color: Colors.white),),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: (){
                                weight--;
                                setState(() {

                                });
                              },
                                child:Icon(Icons.remove,size: 40,),
                                backgroundColor:Colors.amberAccent,
                                heroTag: 3,
                                mini: true,
                              ),

                              const SizedBox(width: 40,),

                              FloatingActionButton(onPressed: (){
                                weight++;
                                setState(() {

                                });
                              },heroTag: 4,
                                mini: true,
                                child:Icon(Icons.add,size: 40,),
                                backgroundColor:Colors.amberAccent,

                              ),

                            ],

                          ),
                        ],
                      ),
                       decoration:BoxDecoration(
                         color: Colors.black87,
                         borderRadius: BorderRadius.circular(20),

                       ),
                     ),),

                   ],

                 )),
           ),
         ),



         Padding(
           padding: const EdgeInsets.only(left: 8,right: 8,bottom: 20,),
           child: MaterialButton(
             height: 40,
             minWidth: double.infinity,
             onPressed: (){
               double result=weight/pow(height/100, 2);

               

               Navigator.push(context,
                   MaterialPageRoute(
                       builder: (context)=> Results(
                           status:"" ,
                           weight: weight.toDouble(),
                           bmi: result,
                           gender: isMale?"Male":"Female",

                       )));
             },child:

            const Text("calculate"),
             color:  Color(0xFFF9A825),

           ),
         ),
        ],

        ),
      ),

    );
  }
}
