import 'package:flutter/material.dart';

class Results extends StatelessWidget {

   double bmi;
   String gender;
   double weight;
   String status;

   Results({
     required this.weight,
     required this.bmi,
     required this.gender,
     required this.status,
});

String bmiStatus(double bmi )
{
  if(bmi<18.5){
    return "Under Weight";
  }else if(bmi<24){
    return "Normal";
  }else if (bmi<30){
    return "Overweight";
  }else {
    return "Obese";
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        backgroundColor: Color(0xFFF9A825),

        title: const Center(
          child: Text("Results",
            style: TextStyle(
              fontSize: 40,
              color:Colors.black,
            ),),
        ),
      ),
      body:
        Card(
          color: const Color(0xFF03A9F4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
           children: [

             Row(
               mainAxisAlignment: MainAxisAlignment.center,

               children:  [
                 const Text("Results:-",style: TextStyle(fontSize: 20,
                     fontWeight: FontWeight.bold),),
                 SizedBox(width: 20,),
                 Text("${bmi.round()}",
                   style: const TextStyle(
                       fontSize: 20,
                     fontWeight: FontWeight.bold),),
               ],
             ),
             const SizedBox(height: 20,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,

               children:  [
                 const Text("Gender:-",style: TextStyle(fontSize: 20,
                     fontWeight: FontWeight.bold),),
                 const SizedBox(width: 20,),
                 Text("$gender",
                   style: const TextStyle(
                       fontSize: 20,
                     fontWeight: FontWeight.bold),),
               ],
             ),
             const SizedBox(height: 20,),


             Row(
               mainAxisAlignment: MainAxisAlignment.center,

               children:  [
                 const Text("Status:-",style: TextStyle(fontSize: 20,
                     fontWeight: FontWeight.bold),),
                 const SizedBox(width: 20,),
                 Text(bmiStatus (bmi),
                   style: const TextStyle(
                       fontSize: 20,
                     fontWeight: FontWeight.bold),),
               ],
             ),

           ],
          ),
        ),


    );
  }
}

