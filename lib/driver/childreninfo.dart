import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:waslna/shared/childerninfocard.dart';
import 'package:waslna/shared/childerninfocard.dart';
class childreninfo extends StatefulWidget {
  const childreninfo({super.key});

  @override
  State<childreninfo> createState() => _childreninfoState();
}

class _childreninfoState extends State<childreninfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.black),
            backgroundColor:Color.fromARGB(255, 254	,198	,40),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
             //   SizedBox(width: 45,),
                Image.asset('assets/bus5.jpeg',
                fit: BoxFit.cover,
                height: 50,),
                Text(" WASLNA",
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'ZCOOL XiaoWei',
                  color: Colors.black
                ),),
              ],
            ) ,
          ),
          body: Container(
            margin: EdgeInsets.only(left: 20,right: 20,top: 25,bottom: 25),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                    Text("Your Children Information",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    SizedBox(height: 30,),
                     Expanded(
                       child: SizedBox(
                         child: ListView.builder(
                          itemCount: 5,
                          itemBuilder: (context, index) => childreninfocard()),
                       ),
                     ),
                   ],
                 )
               

    
  ));
  }
}