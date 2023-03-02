import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:waslna/aboutscreen.dart';
import 'package:waslna/loginscreen.dart';
import 'package:waslna/shared/MyApplication.dart';

class contactscreen extends StatefulWidget {
  const contactscreen({super.key});

  @override
  State<contactscreen> createState() => _contactscreenState();
}
final GlobalKey<FormState> myKeys = GlobalKey<FormState>();

class _contactscreenState extends State<contactscreen> {
  
   
  @override
  Widget build(BuildContext context) {
    var nameController;
    var emailsssController;
    return  GestureDetector(
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
    
    
          body: ListView(
            children: [
                Container(
                  margin: EdgeInsets.only(left: 20,right: 20,bottom: 15,top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                
                      Text("Contacts us ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  
                      SizedBox(height: 20,),
                      Text("Call Us Now :-",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Icon(Icons.phone_in_talk),
                          Text(" Mohamed : 01011646798",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.phone_in_talk),
                          Text(" Ahmed : 01211686739",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.phone_in_talk),
                          Text(" Ali : 01112595864 ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                        ],
                      ),
                      SizedBox(height: 10,),
                  
                      Text("Got A Quastion ? ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
                  
                      SizedBox(height: 15,),
                      Text(" NAME",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                       SizedBox(height: 10,),
                     
                     
                      SizedBox(
                        width: 300,
                          child: Form(
                              key: myKeys,
                               child: Column(
                                 children: [
                                   TextFormField(
                                    controller: nameController,
                                    autovalidateMode: AutovalidateMode.onUserInteraction,
                                     validator: (value) {
                                     if (value!.isEmpty) {
                                      return "please enter your Name";
                                      } else if (value.length <= 2) {
                                       return "Name must be more than 3 fileds";
                                       }
                                       return null;
                                         },
                                       decoration: InputDecoration(
                                       hintText: 'Enter your Name ',
                                       focusedBorder: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(16),
                                       borderSide: BorderSide(color: Colors.black,width: 3),
                                        ),
                                       enabledBorder: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(16),
                                       borderSide: BorderSide(color: Colors.black,width: 3),
                                     ),),
                            ),

                           
                      SizedBox(height: 10,),
                      
                      Row(
                        children: [
                          Text(" EMAIL",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                        ],
                      ),
                      SizedBox(height: 10,),

                            TextFormField(
                          controller: emailsssController,
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                 validator: (value) {
                                 if (value!.isEmpty) {
                                 return "please enter your Email";}
                                 else  {
                                 if (value.length > 5 && value.contains('@') && value.endsWith('.com')) {
                                  return null;
                                  }return 'Enter a Valid Email Address';
                                  }
                                     },
                              decoration: InputDecoration(
                              hintText: 'Enter your Email',
                              focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(color: Colors.black,width: 3),
                              ),
                             enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                             borderSide: BorderSide(color: Colors.black,width: 3),
                             ),),
                        ),
                                 ],
                               ),
                          ),
                        ),
                    
                      SizedBox(height: 10,),
                      Text(" MESSAGE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                      SizedBox(height: 10,),
                  
                      SizedBox(
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter your Massage',
                           focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                             borderSide: BorderSide(color: Colors.black,width: 3),
                              ),
                             enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                             borderSide: BorderSide(color: Colors.black,width: 3),
                             ),
                             ),
                          maxLines: 5,
                        ),
                      ),              
                      Container(
                        margin: const EdgeInsets.only(top: 10,right: 100,left: 100),
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.amber, width: 3,),
                        ),
                        child: TextButton(
                        onPressed: () {
                        if (myKeys.currentState!.validate()) {
                          myApplication.navigateToReplace(
                              contactscreen(),context
                              );
                            myApplication.showToast(
                              text: "sended succesfully",
                              color: Colors.green);
                        }
                      },
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.amber,
                        ),
                        child: Text('Send',
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
}