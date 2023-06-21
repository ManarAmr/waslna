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
/*import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:waslna/loginscreen.dart';
import 'aboutscreen.dart';
class NotificationScreen extends StatefulWidget {
  //const NotificationScreen({super.key});

  // Map<String, bool> _notifications = {
  //   'arrive_school':false,
  //   'left_school':false,
  //   'arrive_home':false,
  //   'left_home':false,
  //   'near_home':false,
  // };
  // late final Function saveFilters;
  // final Map<String, bool> currentNotifications;
  // NotificationScreen(this.currentNotifications,this.saveFilters);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
bool status1 = false;
bool status2 = false;
bool status3 = false;
bool status4 = false;
bool status5 = false;

// var _isArriveSchool = false;
// var _isLeftSchool = false;
// var _isArriveHome = false;
// var _isLeftHome = false;
// var _isNearHome = false;

@override
void initState() {
    // TODO: implement initState
    AwesomeNotifications().isNotificationAllowed().then((isAllowed){
      if(!isAllowed){
        AwesomeNotifications().requestPermissionToSendNotifications();
      }
    });
   // _isArriveSchool = widget.currentNotifications['arrive_school']!;
    super.initState();

  }
  triggerNotiffication1(){
  AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: 10,
      channelKey: 'basic_channel',
      //title: 'simple Notification',
      body: 'The Bus Will Arrive At Your Home In 7:15 AM',
    )
  ); 
  }
triggerNotiffication2(){
  AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: 10,
        channelKey: 'basic_channel',
        //title: 'simple Notification',
        body: 'The Bus Left The School',
      )
  );
}
triggerNotiffication3(){
  AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: 10,
        channelKey: 'basic_channel',
        //title: 'simple Notification',
        body: 'The Bus Arrive At Your Home',
      )
  );
}
triggerNotiffication4(){
  AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: 10,
        channelKey: 'basic_channel',
        //title: 'simple Notification',
        body: 'The Bus Left Your Home',
      )
  );
}
triggerNotiffication5(){
  AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: 10,
        channelKey: 'basic_channel',
        //title: 'simple Notification',
        body: 'Get Ready, The Bus Will Arrive At Your Home In 7:15 AM',
      )
  );
}

// void _changeFilters(Map<String, bool> filterData){
//
// }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(

      appBar: AppBar(
          leading: const BackButton(color: Colors.black),
          backgroundColor:const Color.fromARGB(255, 254	,198	,40),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //SizedBox(width: 50,),
              Image.asset('assets/bus5.jpeg',
              fit: BoxFit.cover,
              height: 50,),
              const SizedBox(width: 10,),
              const Text("WASLNA",
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'ZCOOL XiaoWei',
                color: Colors.black
              ),),
            ],
          ) ,
        ),

        body: Container(
          margin: const EdgeInsets.only(left: 20,top: 40,right: 20,bottom: 25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.notifications_none,size: 30,),
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
                      const SizedBox(width: 10,),
                      const Text("When Bus Arrive at School ",style: TextStyle(fontSize: 17),),
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
                           if(status1 = val){
                             triggerNotiffication1();
                           }else{
                             null;
                           }
                      //  status1 = val;
                       // triggerNotiffication1();
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
                           if(status2 = val){
                             triggerNotiffication2();
                           }else{
                             null;
                           }
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
                           if(status3 = val){
                             triggerNotiffication3();
                           }else{
                             null;
                           }
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
                           if(status4 = val){
                             triggerNotiffication4();
                           }else{
                             null;
                           }
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
                           if(status5 = val){
                             triggerNotiffication5();
                           }else{
                             null;
                           }
                           });
                             },
                           ),
                    ],
                  ),
              ), 

              const SizedBox(height: 20,),
              Center(
                  child:Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(top: 0,right:10 ,left:30 ,bottom: 10),
                          width: 120,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Colors.amber,
                              width: 3,
                            ),
                          ),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.amber,


                            ),
                            onPressed: (){
                              // final selectedNotifications = {
                              //   'arrive_school': _isArriveSchool,
                              //   'left_school': _isLeftSchool,
                              //   'arrive_home': _isArriveHome,
                              //   'left_home': _isLeftHome,
                              //   'near_home': _isNearHome,
                              // };
                              // widget.saveFilters(selectedNotifications);
                            },
                            child: const Text('Save',
                              style: TextStyle(
                                fontSize: 20,
                              ),),


                          )
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 0,right:10 ,left:10 ,bottom: 10),
                          width: 120,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Colors.amber,
                              width: 3,
                            ),
                          ),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.amber,
                              shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(15),
                                ),
                            ),
                            onPressed: () {
                              aboutscreen();//userModel: null, firebaseUser: ,);
                            },
                            child: const Text(
                              'Cancel',
                              style: TextStyle(
                                fontSize: 20,
                              ),),


                          )
                      ),

                    ],
                  ),
              ),


              
            ],
          ),
        ),

    );
  }
}*/