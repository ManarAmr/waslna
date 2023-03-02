import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class settingscreen extends StatefulWidget {
  const settingscreen({super.key});

  @override
  State<settingscreen> createState() => _settingscreenState();
}

class _settingscreenState extends State<settingscreen> {
  
  bool status6 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       appBar: AppBar(
         iconTheme: IconThemeData(color: Colors.black),
          backgroundColor:Color.fromARGB(255, 254	,198	,40),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 6,),
              Image.asset('assets/bus5.jpeg',
              fit: BoxFit.cover,
              height: 50,),
              SizedBox(width: 10,),
              Text("WASLNA",
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'ZCOOL XiaoWei',
                color: Colors.black
              ),),
            ],
          ) ,
        ),

      body: Container(
         margin: EdgeInsets.only(left: 20,top: 40,right: 20),
         child: Column(
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.settings),
                SizedBox(width: 10,),
                Text("Setting",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ],
            ),
            
              SizedBox(height: 40,),

              Container(
                padding: EdgeInsets.only(left: 10,bottom: 5,top: 5),
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                 color:Color.fromARGB(255, 252	,254,178), ),
                child: Row(
                  children: [
                    Text("Name",style: TextStyle(fontSize: 16),),
                    Spacer(),
                    IconButton( icon:Icon(Icons.arrow_forward_ios_outlined),onPressed: (){},),
                  ],
                ),
              ),
              
              SizedBox(height: 15,),

              Container(
                padding: EdgeInsets.only(left: 10,bottom: 5,top: 5),
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                 color:Color.fromARGB(255, 252	,254,178), ),
                child: Row(
                  children: [
                    Text("Phone",style: TextStyle(fontSize: 16),),
                    Spacer(),
                    IconButton( icon:Icon(Icons.arrow_forward_ios_outlined),onPressed: (){},),
                  ],
                ),
              ),
              
              SizedBox(height: 15,),

              Container(
                padding: EdgeInsets.only(left: 10,bottom: 5,top: 5),
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                 color:Color.fromARGB(255, 252	,254,178), ),
                child: Row(
                  children: [
                    Text("Connected Accounts",style: TextStyle(fontSize: 16),),
                    Spacer(),
                    IconButton( icon:Icon(Icons.arrow_forward_ios_outlined),onPressed: (){},),
                  ],
                ),
              ),
              
              SizedBox(height: 15,),

              Container(
                padding: EdgeInsets.only(left: 10,bottom: 5,top: 5),
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                 color:Color.fromARGB(255, 252	,254,178), ),
                child: Row(
                  children: [
                    Text("Notification",style: TextStyle(fontSize: 16),),
                    Spacer(),
                    IconButton( icon:Icon(Icons.arrow_forward_ios_outlined),onPressed: (){},),
                  ],
                ),
              ),
              
              SizedBox(height: 15,),


              Container(
                padding: EdgeInsets.only(left: 10,bottom: 5,top: 5),
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                 color:Color.fromARGB(255, 252	,254,178), ),
                child: Row(
                  children: [
                    Text("Privacy",style: TextStyle(fontSize: 16),),
                    Spacer(),
                    IconButton( icon:Icon(Icons.arrow_forward_ios_outlined),onPressed: (){},),
                  ],
                ),
              ),
              
              SizedBox(height: 15,),

              Container(
                padding: EdgeInsets.only(left: 10,bottom: 5,top: 5),
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                 color:Color.fromARGB(255, 252	,254,178), ),
                child: Row(
                  children: [
                    Text("Language",style: TextStyle(fontSize: 16),),
                    Spacer(),
                    IconButton( icon:Icon(Icons.arrow_forward_ios_outlined),onPressed: (){},),
                  ],
                ),
              ),
             
          ],),
       ),
      

    );
  }
}