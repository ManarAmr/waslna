import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class childreninfocard extends StatelessWidget {
  const childreninfocard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container( 
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                      color:Color.fromARGB(255, 252	,254,178),),
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Name ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ),),
                              Text("mohamed ahmed ",style: TextStyle( ),),
                            ],
                          ),

                          Row(
                            children: [
                              Text("Age ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ),),
                              Text("19",style: TextStyle( ),),
                              Spacer(),

                             CircleAvatar(
                            backgroundImage: AssetImage('assets/girl.jpeg',),
                            radius: 40,
                            
                          ),
                            
                            ],
                          ),

                          Row(
                            children: [
                              Text("Phone ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ),),
                              Text("0121574984 ",style: TextStyle(),),
                            ],
                          ),
                      ]
                      ),
                    ),

                    SizedBox(height: 20,)
      ],
    );
              
  }
}