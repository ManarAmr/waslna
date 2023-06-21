import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:waslna/aboutscreen.dart';
import 'package:waslna/contactscreen.dart';
import 'package:waslna/driver/driverpage.dart';
import 'package:waslna/driver/childreninfo.dart';
import 'package:waslna/driver/profiledriverscreen.dart';
import 'package:waslna/shared/MyApplication.dart';
import 'package:waslna/driver/editinformationdriver.dart';
import 'package:waslna/driver/scanner.dart';
import 'package:waslna/driver/driverpage.dart';

class aboutdrivescreen extends StatefulWidget {
  const aboutdrivescreen({super.key});
  @override
  State<aboutdrivescreen> createState() => _aboutdrivescreenState();
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






class _aboutdrivescreenState extends State<aboutdrivescreen> {
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        
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
    
          body: ListView(
            children: [
              Container(
               // width: double.infinity,
               margin: EdgeInsets.only(left: 20,top: 40,right: 20,),
               child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              
                 children: [
                   Text("Please Enter Your : ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                   SizedBox(height: 40,),
                   Row(
                     children: [
                       Icon(Icons.brightness_1,size: 15,),
                       Text("Drug Test ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                       Spacer(),
                       ElevatedButton(
                    style: ElevatedButton.styleFrom(
                     primary: Colors.amber,  // Background color
                     
                     shape: BeveledRectangleBorder(
                     borderRadius: BorderRadius.circular(3)
                      ),
                      ),
                    onPressed: () async{
                    final result = await FilePicker.platform.pickFiles();
                    if(result==null) return;
                    final file = result.files.first;
                    /*openFile(file);*/
                   },
                    child: Text('Choose File',style: TextStyle(color: Colors.black),))
                   
                     ],
                   ),
                  
                  Row(
                     children: [
                       Icon(Icons.brightness_1,size: 15),
                       Text("Birth certificate ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                       Spacer(),
                       ElevatedButton(
                    style: ElevatedButton.styleFrom(
                     primary: Colors.amber,  // Background color
                     
                     shape: BeveledRectangleBorder(
                     borderRadius: BorderRadius.circular(3)
                      ),
                      ),
                    onPressed: () async{
                    final result = await FilePicker.platform.pickFiles();
                    if(result==null) return;
                    final file = result.files.first;
                    /*openFile(file);*/
                   },
                    child: Text('Choose File',style: TextStyle(color: Colors.black),))
                     ],
                   ),
                   Row(
                     children: [
                       Icon(Icons.brightness_1,size: 15),
                       Text("Identification card ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                       Spacer(),
                       ElevatedButton(
                    style: ElevatedButton.styleFrom(
                     primary: Colors.amber,  // Background color
                     
                     shape: BeveledRectangleBorder(
                     borderRadius: BorderRadius.circular(3)
                      ),
                      ),
                    onPressed: () async{
                    final result = await FilePicker.platform.pickFiles();
                    if(result==null) return;
                    final file = result.files.first;
                    /*openFile(file);*/
                   },
                    child: Text('Choose File',style: TextStyle(color: Colors.black),))
                     
                     ],
                   ),


                   Row(
                     children: [
                       Icon(Icons.brightness_1,size: 15),
                       Text("license card ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                       Spacer(),
                       ElevatedButton(
                    style: ElevatedButton.styleFrom(
                     primary: Colors.amber,  // Background color
                     
                     shape: BeveledRectangleBorder(
                     borderRadius: BorderRadius.circular(3)
                      ),
                      ),
                    onPressed: () async{
                    final result = await FilePicker.platform.pickFiles();
                    if(result==null) return;
                    final file = result.files.first;
                    /*openFile(file);*/
                   },
                    child: Text('Choose File',style: TextStyle(color: Colors.black),))
                     
                     ],
                   ),




                   SizedBox(height: 10,),
                   Row(
                     children: [
                       Icon(Icons.brightness_1,size: 15),
                       Text("Criminal records certificate ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                        Spacer(),
                     ],
                   ),
                   Row(
                     children: [
                       Spacer(),
                       ElevatedButton(
                        style: ElevatedButton.styleFrom(
                         primary: Colors.amber,  // Background color
                         
                         shape: BeveledRectangleBorder(
                         borderRadius: BorderRadius.circular(3)
                          ),
                          ),
                        onPressed: () async{
                        final result = await FilePicker.platform.pickFiles();
                        if(result==null) return;
                        final file = result.files.first;
                        /*openFile(file);*/
                       },
                        child: Text('Choose File',style: TextStyle(color: Colors.black),)),
                     ],
                   ),






                   SizedBox(height: 30,),



                   Row(
                     children: [
                       Container(
                         //   margin: EdgeInsets.only(top: 0,right:20,bottom: 10),
                        width: 150,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.amber,
                            width: 3,
                          ),
                        ),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.amber,
                            ),
                          onPressed: () {
                            myApplication.navigateTo(HomePage(), context);
                           },
                          child: Text('Done',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black
                            ),),
                        )
                ),
                Spacer(),


                 Container(
              //  margin: EdgeInsets.only(top: 0,right:20  ,bottom: 10),
                width: 150,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                        color: Colors.amber,
                        width: 3,
                  ),
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(15) )
                  ),
                  onPressed: () {
                  },
                  child: Text('Cancel',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.amber,
                        ),),
                            )
                       ),
                     ],
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

/*void openFile(PlatformFile file) {
  OpenFile.open(file.path);
}*/