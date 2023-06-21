import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
//import 'package:waslna/NotificationScreen.dart';
import 'package:waslna/privacyscreen.dart';
import 'package:waslna/shared/MyApplication.dart';

class settingscreen extends StatefulWidget {
  const settingscreen({super.key});

  @override
  State<settingscreen> createState() => _settingscreenState();
}

class _settingscreenState extends State<settingscreen> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  Future<void> showInformationDialog(BuildContext context, {
    required String hintText,
    required IconData prefixIcon,
    required TextInputType keyboardType,
  }) async{
    return await showDialog(context: context, builder: (context){
      final TextEditingController textEditingController = TextEditingController();
      bool isChecked = false;
      return StatefulBuilder(builder: (context,setState){
        return AlertDialog(
          content: Form(
            key: formkey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 10.0,),
                TextFormField(
                  controller: textEditingController,
                  validator: (value){
                    return value!.isNotEmpty ? null : 'Invalied Field';
                  },
                  decoration:  InputDecoration(
                    hintText: hintText,
                    hintStyle: const TextStyle(
                      color: Colors.amber,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(prefixIcon,color: Colors.amber,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  keyboardType: keyboardType,
                ),
              ],
            ),
          ),
          backgroundColor: Color.fromARGB(255, 252	,254,178),
          actions: <Widget>[
            TextButton(
              onPressed: (){
                if (formkey.currentState!.validate()){
                  Navigator.of(context).pop();
                }
              },
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.amber),
              ),
              child: const Text(
                'Okay',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        );
      });
    });
  }
  bool status6 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       appBar: AppBar(
         iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor:const Color.fromARGB(255, 254	,198	,40),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 6,),
              Image.asset('assets/bus5.jpeg',
              fit: BoxFit.cover,
              height: 50,),
              const SizedBox(width: 10,),
              Text("WASLNA",
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'ZCOOL XiaoWei',
                color: Colors.black
              ),),
            ],
          ) ,
        ),

      body: SingleChildScrollView(
         padding: EdgeInsets.only(left: 20,top: 40,right: 20),
         child: Column(
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.settings),
                SizedBox(width: 10,),
                Text("Setting",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ],
            ),
            
              SizedBox(height: 40,),
              InkWell(
                onTap: ()async{
                  await showInformationDialog(context,hintText: 'Edit New Name',prefixIcon: Icons.person,keyboardType: TextInputType.text);
                },
              child:  Container(
                  padding: EdgeInsets.only(left: 10,bottom: 5,top: 5),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                    color:Color.fromARGB(255, 252	,254,178), ),
                  child: Row(
                    children: [
                      Text("Name",style: TextStyle(fontSize: 16),),
                      Spacer(),
                      IconButton(
                        icon:Icon(Icons.arrow_forward_ios_outlined),
                        onPressed: ()async{
                          await showInformationDialog(context,hintText: 'Edit New Name',prefixIcon: Icons.person,keyboardType: TextInputType.text);
                        },
                      ),
                    ],
                  ),
                ),
              ),
              
              SizedBox(height: 15,),
              InkWell(
                onTap: ()async{
                  await showInformationDialog(context,hintText: 'Edit your phone',prefixIcon: Icons.phone,keyboardType: TextInputType.number,);
                },
                child:Container(
                padding: EdgeInsets.only(left: 10,bottom: 5,top: 5),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  color:Color.fromARGB(255, 252	,254,178), ),
                child: Row(
                  children: [
                    Text("Phone",style: TextStyle(fontSize: 16),),
                    Spacer(),
                    IconButton(
                      icon:Icon(Icons.arrow_forward_ios_outlined),
                      onPressed: ()async{
                        await showInformationDialog(context,hintText: 'Edit your phone',prefixIcon: Icons.phone,keyboardType: TextInputType.number,);
                      },
                    ),
                  ],
                ),
              ),),

              
              SizedBox(height: 15,),

              InkWell(
                onTap: ()async{
                  await showInformationDialog(context,hintText: 'Edit your accounts',prefixIcon: Icons.email,keyboardType: TextInputType.emailAddress);
                },
                child: Container(
                  padding: EdgeInsets.only(left: 10,bottom: 5,top: 5),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                    color:Color.fromARGB(255, 252	,254,178), ),
                  child: Row(
                    children: [
                      Text("Connected Accounts",style: TextStyle(fontSize: 16),),
                      Spacer(),
                      IconButton(
                        icon:Icon(
                            Icons.arrow_forward_ios_outlined
                        ),
                        onPressed: ()async{
                          await showInformationDialog(context,hintText: 'Edit your accounts',prefixIcon: Icons.email,keyboardType: TextInputType.emailAddress);
                        },
                      ),
                    ],
                  ),
                ),
              ),
              
              SizedBox(height: 15,),

              InkWell(
                onTap: (){
              //   myApplication.navigateTo(NotificationScreen(), context);
                },
                child: Container(
                  padding: EdgeInsets.only(left: 10,bottom: 5,top: 5),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                    color:Color.fromARGB(255, 252	,254,178), ),
                  child: Row(
                    children: [
                      Text("Notification",style: TextStyle(fontSize: 16),),
                      Spacer(),
                      IconButton( icon:Icon(Icons.arrow_forward_ios_outlined),onPressed: (){
                //        myApplication.navigateTo(NotificationScreen(), context); 
                        },),
                    ],
                  ),
                ),
              ),
              
              SizedBox(height: 15,),

              InkWell(
                onTap: (){
                  myApplication.navigateTo(privacyscreen(), context);
                },
                child: Container(
                  padding: EdgeInsets.only(left: 10,bottom: 5,top: 5),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                    color:Color.fromARGB(255, 252	,254,178), ),
                  child: Row(
                    children: [
                      Text("Privacy",style: TextStyle(fontSize: 16),),
                      Spacer(),
                      IconButton( icon:Icon(Icons.arrow_forward_ios_outlined),onPressed: (){
                        myApplication.navigateTo(privacyscreen(), context);
                      },),
                    ],
                  ),
                ),
              ),
              
              SizedBox(height: 15,),

              InkWell(
                onTap: (){},
                child: Container(
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
              ),
           ],
         ),
       ),
      

    );
  }
}