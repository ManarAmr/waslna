import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:waslna/loginscreen.dart';
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
bool status1 = false;
bool status2 = false;
bool status3 = false;
bool status4 = false;
bool status5 = false;
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(

      appBar: AppBar(
          leading: BackButton(color: Colors.black),
          backgroundColor:Color.fromARGB(255, 254	,198	,40),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //SizedBox(width: 50,),
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
          margin: EdgeInsets.only(left: 20,top: 40,right: 20,bottom: 25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.notifications_none),
                  Text(" Notification",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ],
              ),

              Container(
                margin: EdgeInsets.only(top: 40 ,bottom: 10),
                padding: EdgeInsets.only(right: 5),
                 width: double.infinity,
                 height: 50,
                 decoration: BoxDecoration(
                  color: Color.fromARGB(255, 252	,254,178),
                  borderRadius: BorderRadius.circular(10),
                ),
                  child:Row(
                  //  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 10,),
                      Text("When Bus Arrive at School ",style: TextStyle(fontSize: 17),),
                      Spacer(flex: 1,),
                      FlutterSwitch(
                       inactiveSwitchBorder: Border.all(color: Color.fromARGB(255, 228, 193, 69)),
                       activeSwitchBorder: Border.all(color: Color.fromARGB(255, 228, 193, 69)),
                       // toggleBorder: Colors.amber,
                       activeToggleColor: Colors.grey,
                        inactiveColor: Colors.white,
                        activeColor: Color.fromARGB(255, 228, 193, 69),
                        toggleColor: Color.fromARGB(255, 228, 193, 69),
                          width: 65,
                          height: 35,
                        // valueFontSize: 25,
                        //  toggleSize: 20,
                          value: status1,
                          borderRadius: 30.0,
                          padding: 5,
                        //showOnOff: true,
                         onToggle: (val) {
                         setState(() {
                        status1 = val;
                           });
                             },
                           ),
                    ],
                  ),
              ),
               

              Container(
                margin: EdgeInsets.only(top: 5 ,bottom: 10),
                padding: EdgeInsets.only(right: 5),
                 width: double.infinity,
                 height: 50,
                 decoration: BoxDecoration(
                  color: Color.fromARGB(255, 252	,254,178),
                  borderRadius: BorderRadius.circular(10),
                ),
                  child:Row(
                  //  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 10,),
                      Text("When Bus Left School ",style: TextStyle(fontSize: 17),),
                     Spacer(flex: 1,),
                      FlutterSwitch(
                       inactiveSwitchBorder: Border.all(color: Color.fromARGB(255, 228, 193, 69)),
                       activeSwitchBorder: Border.all(color: Color.fromARGB(255, 228, 193, 69)),
                       // toggleBorder: Colors.amber,
                        activeToggleColor: Colors.grey,
                        inactiveColor: Colors.white,
                        activeColor: Color.fromARGB(255, 228, 193, 69),
                        toggleColor: Color.fromARGB(255, 228, 193, 69),
                          width: 65,
                          height: 35,
                     //   valueFontSize: 25,
                     //     toggleSize: 20,
                          value: status2,
                          borderRadius: 30.0,
                          padding: 5,
                        //showOnOff: true,
                         onToggle: (val) {
                         setState(() {
                        status2 = val;
                           });
                             },
                           ),
                    ],
                  ),
              ), 

              Container(
                margin: EdgeInsets.only(top: 5 ,bottom: 10),
                padding: EdgeInsets.only(right: 5),
                 width: double.infinity,
                 height: 50,
                 decoration: BoxDecoration(
                  color: Color.fromARGB(255, 252	,254,178),
                  borderRadius: BorderRadius.circular(10),
                ),
                  child:Row(
                  //  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 10,),
                      Text("When Bus Arrive at Your Home ",style: TextStyle(fontSize: 17),),
                     Spacer(flex: 1,),
                      FlutterSwitch(
                       inactiveSwitchBorder: Border.all(color: Color.fromARGB(255, 228, 193, 69)),
                       activeSwitchBorder: Border.all(color: Color.fromARGB(255, 228, 193, 69)),
                       // toggleBorder: Colors.amber,
                       activeToggleColor: Colors.grey,
                        inactiveColor: Colors.white,
                        activeColor: Color.fromARGB(255, 228, 193, 69),
                        toggleColor: Color.fromARGB(255, 228, 193, 69),
                          width: 65,
                          height: 35,
                     //   valueFontSize: 25,
                    //      toggleSize: 20,
                          value: status3,
                          borderRadius: 30.0,
                          padding:5,
                        //showOnOff: true,
                         onToggle: (val) {
                         setState(() {
                        status3 = val;
                           });
                             },
                           ),
                    ],
                  ),
              ), 

              Container(
                margin: EdgeInsets.only(top: 5 ,bottom: 10),
                padding: EdgeInsets.only(right: 5),
                 width: double.infinity,
                 height: 50,
                 decoration: BoxDecoration(
                  color: Color.fromARGB(255, 252	,254,178),
                  borderRadius: BorderRadius.circular(10),
                ),
                  child:Row(
                  //  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 10,),
                      Text("When Bus Left Your Home ",style: TextStyle(fontSize: 17),),
                     Spacer(flex: 1,),
                      FlutterSwitch(
                       inactiveSwitchBorder: Border.all(color: Color.fromARGB(255, 228, 193, 69)),
                       activeSwitchBorder: Border.all(color: Color.fromARGB(255, 228, 193, 69)),
                       // toggleBorder: Colors.amber,
                       activeToggleColor: Colors.grey,
                        inactiveColor: Colors.white,
                        activeColor: Color.fromARGB(255, 228, 193, 69),
                        toggleColor: Color.fromARGB(255, 228, 193, 69),
                          width: 65,
                          height: 35,
                     //   valueFontSize: 25,
                   //       toggleSize: 20,
                          value: status4,
                          borderRadius: 30.0,
                          padding: 5,
                        //showOnOff: true,
                         onToggle: (val) {
                         setState(() {
                        status4 = val;
                           });
                             },
                           ),
                    ],
                  ),
              ), 


              Container(
                margin: EdgeInsets.only(top: 5 ,bottom: 10),
                padding: EdgeInsets.only(right: 5),
                 width: double.infinity,
                 height: 50,
                 decoration: BoxDecoration(
                  color: Color.fromARGB(255, 252	,254,178),
                  borderRadius: BorderRadius.circular(10),
                ),
                  child:Row(
                  //  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 10,),
                      Text("When Bus is Near My Home",style: TextStyle(fontSize: 17),),
                     Spacer(flex: 1,),
                      FlutterSwitch(
                       inactiveSwitchBorder: Border.all(color: Color.fromARGB(255, 228, 193, 69)),
                       activeSwitchBorder: Border.all(color: Color.fromARGB(255, 228, 193, 69)),
                       // toggleBorder: Colors.amber,
                       activeToggleColor: Colors.grey,
                        inactiveColor: Colors.white,
                        activeColor: Color.fromARGB(255, 228, 193, 69),
                        toggleColor: Color.fromARGB(255, 228, 193, 69),
                          width: 65,
                          height: 35,
                     //   valueFontSize: 25,
                     //     toggleSize: 20,
                          value: status5,
                        //  borderRadius: 30.0,
                          padding: 5,
                        //showOnOff: true,
                         onToggle: (val) {
                         setState(() {
                        status5 = val;
                           });
                             },
                           ),
                    ],
                  ),
              ), 


              
            ],
          ),
        ),

    );
  }
}