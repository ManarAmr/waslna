import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:waslna/contactscreen.dart';
import 'package:waslna/profilechildrenscreen.dart';
import 'package:waslna/reservation.dart';
import 'package:waslna/settingscreen.dart';
import 'package:waslna/shared/MyApplication.dart';
import 'package:waslna/mapscreen.dart';
import 'package:waslna/NotificationScreen.dart';
import 'chatscreen.dart';
class aboutscreen extends StatefulWidget {
  const aboutscreen({super.key});

  @override
  State<aboutscreen> createState() => _aboutscreenState();
}

enum DialogsAction { yes, cancel }
class AlertDialogs {
  static Future<DialogsAction> yesCancelDialog(
    BuildContext context,
    //String title,
    //String body,
  ) async {
    final action = await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
            title: Text("Log out "),
            content: Text("Do you want to Log out ?"),
            actions: <Widget>[
              ElevatedButton(
                style:  ElevatedButton.styleFrom(
                backgroundColor:Color.fromARGB(255, 254, 198, 40),),
                onPressed: () {
                    Navigator.of(context).pop(DialogsAction.cancel);},
                child: Text(
                  'Cancel',
                  style: TextStyle(
                       fontWeight: FontWeight.bold),
                ),
              ),
              ElevatedButton(
                style:  ElevatedButton.styleFrom(
                backgroundColor:Color.fromARGB(255, 254, 198, 40),),
                onPressed: () => SystemChannels.platform.invokeMethod('SystemNavigator.pop'),
                child: Text(
                  'Yes',
                  style: TextStyle(
                       fontWeight: FontWeight.w700),
                ),
              )
            ],
          );
        },);
        return (action != null) ? action : DialogsAction.cancel;
  }
}

class _aboutscreenState extends State<aboutscreen> {
  @override
  bool tappedYes = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
          backgroundColor:Color.fromARGB(255, 254	,198	,40),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/bus5.jpeg',
              fit: BoxFit.cover,
              height: 50,),
              SizedBox(width: 5,),
              Text("WASLNA",
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'ZCOOL XiaoWei',
                color: Colors.black
              ),),
            ],
          ) ,
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(onPressed: (){
          myApplication.navigateTo(Chatscreen(), context);
        },
        backgroundColor: Colors.amber,
        child: Icon(Icons.comment),
        ),
        
        drawer: Drawer(
        backgroundColor:Color.fromARGB(255, 254	,198	,40),
        child: ListView(

          // Important: Remove any padding from the ListView.
         // padding: EdgeInsets.zero,
          children:<Widget> [
             DrawerHeader(
              decoration: BoxDecoration(
               color:Color.fromARGB(255, 254	,198	,40),
              ),
                 child: Container(
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       Container(
                         child: Image.asset(
                           'assets/bus5.jpeg',
                           fit: BoxFit.cover,
                           height: 80,
                           width: 80,
                         ),
                       ),
                       Container(
                           child: Text('  WASLNA',
                               style: TextStyle(color: Colors.black,
                                   fontFamily:'ZCOOL Xiaowei' ,
                                   fontWeight: FontWeight.w400,
                                   fontSize: 25)))
                     ],
                   ),
                 )),

            ListTile(
              leading: Icon(Icons.perm_identity_outlined),
              title: const Text('Profile',
                style: TextStyle(
                  fontSize: 20,
                ),),
              onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=>const profilechildrenscreen()));
              }
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: const Text('Setting',
                style: TextStyle(
                  fontSize: 20,
                ),),
                onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context)=> settingscreen()));}
            ),
            ListTile(
              leading: Icon(Icons.location_on_outlined),
              title: const Text('School Bus Location ',
              style: TextStyle(
                fontSize: 20,
              ),),
                onTap: () =>
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context)=>Home()))
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: const Text('Notification',
                style: TextStyle(
                fontSize: 20,
              ),),
                onTap: (){
                    myApplication.navigateTo(NotificationScreen(), context);
                }
                   
            ),
            ListTile(
              leading: Icon(Icons.phone_in_talk),
              title: const Text('Contacts',
              style: TextStyle(
                fontSize: 20,
              ),),
                onTap: (){
                myApplication.navigateTo(contactscreen(), context);
                },
            ),
            ListTile(
              leading: Icon(Icons.help_outline),
              title: const Text('About',
              style: TextStyle(
                fontSize: 20,
              ),),
                onTap: () {
                    myApplication.navigateTo(aboutscreen(), context);}
            ),
            ListTile(
              leading: Icon(Icons.logout_outlined),
              title: const Text('Log Out',
              style: TextStyle(
                fontSize: 20,
              ),),
                onTap: () async {
            final action = await AlertDialogs.yesCancelDialog(context,/* 'Logout', 'are you sure ?'*/);
            if(action == DialogsAction.yes) {
              setState(() => tappedYes = true);
            } else {
              setState(() => tappedYes = false);
            }    


                  
                }
  
                
            ),
          ],
        ),
      ),
      

            
        body: ListView(
          children: [
            Container(
            margin: EdgeInsets.only(left: 20,top: 20,right: 20,bottom: 25),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text("About us",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

                 SizedBox(height: 30,),   
                 Image.asset('assets/bus7.jpeg') ,
                  
                 SizedBox(height: 20,), 

                 Text("An Overnight Success",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                 
                 SizedBox(height: 20,),
                    
                  Text("Thanks to its seamless integration , intuitive interface and rapid growth, app name is today’s undisputed industry leader for school bus tracking mobile applications.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 17,fontWeight:FontWeight.w400,)),

                  SizedBox(height: 30,),

                  Text("Starting with an Idea",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                  
                  SizedBox(height: 25,),

                  Row(
                    children: [
                      Expanded(
                          child: Text("In 2022, recent graduates had the vision to see the potential of GPS technology.They envisioned an application which would use the emerging technology to help school bus fleets transport students with greater safety and efficiency.  ",   
                            style: TextStyle(fontSize: 16,fontWeight:FontWeight.w400,)),
                                ),             
                            Image.asset('assets/girl.jpeg',fit: BoxFit.cover,height: 150,),
                          ],
                        ) ,
                  
                   SizedBox(height: 25,),

                   Text("Innovation from Customer Feedback",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),

                   SizedBox(height: 25,),

                   Row(
                     children: [
                       Expanded(
                         child: Text("In 2022, recent graduates had the vision to see the potential of GPS technology.They envisioned an application which would use the emerging technology to help school bus fleets transport students with greater safety and efficiency. ",
                                         style: TextStyle(fontSize: 16,fontWeight:FontWeight.w400,)),
                       ),         
                        Container(
                          margin: EdgeInsets.only(bottom: 40),
                          child: Image.asset('assets/pepole.jpeg',fit: BoxFit.cover,height:100,width: 100,)),
                     ],
                   ),
                    
                    SizedBox(height: 25,),

                   Image.asset('assets/parent.jpeg',fit: BoxFit.cover,height: 250,width:double.infinity,),
                  
                   SizedBox(height: 15,),
                  
                   Text("Alerts notify parents when the bus is just a few blocks away.Students get to the bus on time, without the need to stand outside for extended periods of time on dark, cold winter mornings. ",textAlign: TextAlign.justify,
                   style: TextStyle(fontSize: 16,fontWeight:FontWeight.w400,)),
                 
                   SizedBox(height: 15,),

                Container(
                 margin: EdgeInsets.only(right:60 ,left:60 ,bottom: 10),
                 width: 300,
                 height: 50,
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.amber,
                    width: 3,
                  ),
                ),
                  child:TextButton(
                  onPressed: () {
                   myApplication.navigateTo(Reservationscreen(), context);
                  },
                  child: Text('Book With us Now !',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),),
                      ),
                      
            ), 

             ]),
        )],
        ),
    );
  }
}