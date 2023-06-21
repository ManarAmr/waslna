import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:waslna/aboutscreen.dart';
import 'package:waslna/contactscreen.dart';
import 'package:waslna/driver/childreninfo.dart';
import 'package:waslna/driver/editinformationdriver.dart';
import 'package:waslna/driver/profiledriverscreen.dart';
import 'package:waslna/driver/scanner.dart';
import 'package:waslna/driver/schedule.dart';
import 'package:waslna/driver/studentlist.dart';
import 'package:waslna/shared/MyApplication.dart';

class  HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
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

class _HomePageState extends State<HomePage> {
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

             actions: [IconButton(
               icon: Icon(
                Icons.qr_code_scanner,
                 color: Colors.black
                 ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context)=>ScannerPage()));
                      },
                      ),
         ] ),
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
                myApplication.navigateTo(profiledriverscreen(firstnamedriver: 'firstnamedriver', secondnamedriver: 'secondnamedriver', emaildriver: 'emaildriver'), context);
              }

            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: const Text('Edit Information',
                style: TextStyle(
                  fontSize: 20,
                ),),
                onTap: () {
                  myApplication.navigateTo(editinformationdriver(), context);
                }
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: const Text('Children Information ',
              style: TextStyle(
                fontSize: 20,
              ),),
                onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context)=>childreninfo()));}
            ),
            ListTile(
              leading: Icon(Icons.qr_code_scanner),
              title: const Text('Scanner ',
              style: TextStyle(
                fontSize: 20,
              ),),
                onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context)=>ScannerPage()));}
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
                onTap: ()  async {
            final action = await AlertDialogs.yesCancelDialog(context,/* 'Logout', 'are you sure ?'*/);
            if(action == DialogsAction.yes) {
              bool tappedYes;
              setState(() => tappedYes = true);
            } else {
              bool tappedYes;
              setState(() => tappedYes = false);
            }    



                  
                }
            ),
          ],
        ),
      ),


      body: Center(
        child: Container(
           margin: EdgeInsets.only(left: 20,top: 30,right: 20,),
          child: Column(
            children: <Widget>[
              Text(
                'Welcome, Driver!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 100),
              Container(
                width: 200,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                              padding: EdgeInsets.symmetric(
                               vertical: 5),
                                backgroundColor: Colors.amber,
                              ),
                  child: Text('View Schedule',style: TextStyle(
                  fontSize: 20,
                ),),
                  onPressed: () {
                    // Navigate to SchedulePage
                    myApplication.navigateTo(SchedulePage(), context);
                  },
                ),
              ),
              SizedBox(height: 25),

              Container(
                width: 200,
                height: 45,
                child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                              padding: EdgeInsets.symmetric(
                               vertical: 5),
                                backgroundColor: Colors.amber,
                              ),

                  child: Text('View Students',style: TextStyle(
                    fontSize: 20,
                  ),),
                  onPressed: () {
                    // Navigate to StudentsPage
                   myApplication.navigateTo(StudentsPage(), context);
                  },
                ),
              ),
              SizedBox(height: 50),
              Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Phone: 555-1234',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                'Email: info@schoolbus.com',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


/*
import 'package:flutter/material.dart';
import 'package:waslna/driver/schedule.dart';
import 'package:waslna/driver/studentlist.dart';
import 'package:waslna/shared/MyApplication.dart';

class HomePage extends StatelessWidget {

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
                myApplication.navigateTo(profiledriverscreen(firstnamedriver: 'firstnamedriver', secondnamedriver: 'secondnamedriver', emaildriver: 'emaildriver'), context);
              }

            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: const Text('Edit Information',
                style: TextStyle(
                  fontSize: 20,
                ),),
                onTap: () {
                  myApplication.navigateTo(editinformationdriver(), context);
                }
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: const Text('Children Information ',
              style: TextStyle(
                fontSize: 20,
              ),),
                onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context)=>childreninfo()));}
            ),
            ListTile(
              leading: Icon(Icons.qr_code_scanner),
              title: const Text('Scanner ',
              style: TextStyle(
                fontSize: 20,
              ),),
                onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context)=>ScannerPage()));}
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
                onTap: ()  async {
            final action = await AlertDialogs.yesCancelDialog(context,/* 'Logout', 'are you sure ?'*/);
            if(action == DialogsAction.yes) {
              bool tappedYes;
              setState(() => tappedYes = true);
            } else {
              bool tappedYes;
              setState(() => tappedYes = false);
            }    



                  
                }
            ),
          ],
        ),
      ),





      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome, Driver!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('View Schedule'),
              onPressed: () {
                // Navigate to SchedulePage
                myApplication.navigateTo(SchedulePage(), context);
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('View Students'),
              onPressed: () {
                // Navigate to StudentsPage
               myApplication.navigateTo(StudentsPage(), context);
              },
            ),
            SizedBox(height: 32),
            Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Phone: 555-1234',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Email: info@schoolbusapp.com',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}*/