import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

class profiledriverscreen extends StatefulWidget {
final firstnamedriver ;
final secondnamedriver;
final emaildriver;
  const profiledriverscreen({super.key, required this.firstnamedriver,required this.secondnamedriver,  required this.emaildriver});

  @override
  State<profiledriverscreen> createState() => _profiledriverscreenState();
}
class _profiledriverscreenState extends State<profiledriverscreen> {

String selectImagePath ='';

selectImageFromGallery() async{
  XFile? file =await ImagePicker().pickImage(source: ImageSource.gallery,imageQuality: 10);
  if (file !=null){
    return file.path;
  }else{
    return'';
  }
}

selectImageFromCamera() async{
  XFile? file =await ImagePicker().pickImage(source: ImageSource.camera,imageQuality: 10);
  if (file !=null){
    return file.path;
  }else{
    return'';
  }
}

  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(
          backgroundColor:Color.fromARGB(255, 254	,198	,40),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 6,),
              Image.asset('assets/bus5.jpeg',
              fit: BoxFit.cover,
              height: 50,),
              Text("WASLNA",
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'ZCOOL XiaoWei',
                color: Colors.black
              ),),
            ],
          ) ,
        ),

        body: Center(
          child: Container(
            margin: EdgeInsets.only(top: 25,left: 25,right: 25),
            
            child: Column(
              children: [
                  
                  Stack(
                    children: [
                      
                      selectImagePath ==''
                       ?CircleAvatar(child:ClipOval(child: Image.asset('assets/man.jpeg')),radius: 80,)
                       :CircleAvatar(child: ClipOval(child: Image.file(File(selectImagePath),fit: BoxFit.cover,width: 300,)),radius: 80,),


                     Positioned(
                      bottom: 0,
                      left: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 2,
                            color: Colors.amber
                          ),
                          color: Color.fromARGB(255, 252	,254,178),
                        ),
                        child: InkWell(
                          onTap: (){

                            showModalBottomSheet(context: context, builder: (context){

                              return Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 20,
                              ),
                             child: Column(
                             children: [
                            Text("choose profile picture",style: TextStyle(fontSize: 20),),
                            SizedBox(height: 20,),
                            Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            TextButton.icon(onPressed: () async{

                               selectImagePath = await selectImageFromCamera();
                                if (selectImagePath !=''){
                                  Navigator.pop(context);
                                  setState(() {
                                    
                                  });
                                }else{
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                    content:Text("no image select")));
                                }

                            }
                             , icon: Icon(Icons.camera, color: Colors.black),
                             label: Text("Camera",style: TextStyle(fontSize: 20,color: Colors.black),)),

                            TextButton.icon(
                              onPressed: () async{
                                selectImagePath = await selectImageFromGallery();
                                if (selectImagePath !=''){
                                  Navigator.pop(context);
                                  setState(() {
                                    
                                  });
                                }else{
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                    content:Text("no image select")));
                                }
                               
                              }
                           , icon: Icon(Icons.image, color: Colors.black),
                           label: Text("Gallery",style: TextStyle(fontSize: 20,color: Colors.black),))
                              ],)
                              ],
                              ),
                             );
                            });
                          },

                          child: Icon(
                                Icons.camera_alt_outlined,
                                
                          ),
                        ),



                        
                      )),
                    ],
                    
                  ),

                SizedBox(height: 10,),
                  
                Text(widget.firstnamedriver +' '+ widget.secondnamedriver,style: TextStyle(fontSize: 30), ),
                Text(widget.emaildriver ,style: TextStyle(fontSize: 15) ),


                SizedBox(height: 15,),   

  
              Container(
                padding: EdgeInsets.only(left: 10),
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                 color:Color.fromARGB(255, 252	,254,178), ),
                child: Row(
                  children: [
                    Text("Personal Info",style: TextStyle(fontSize: 16),),
                    Spacer(),
                    IconButton( icon:Icon(Icons.arrow_forward_ios_outlined),onPressed: (){},),
                  ],
                ),
              ),

              SizedBox(height: 15,),

              Container(
                padding: EdgeInsets.only(left: 10),
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                 color:Color.fromARGB(255, 252	,254,178), ),
                child: Row(
                  children: [
                    Text("Bank Account Info",style: TextStyle(fontSize: 16),),
                    Spacer(),
                    IconButton( icon:Icon(Icons.arrow_forward_ios_outlined),onPressed: (){},),
                  ],
                ),
              ),

               SizedBox(height: 15,),

              Container(
                padding: EdgeInsets.only(left: 10),
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                 color:Color.fromARGB(255, 252	,254,178), ),
                child: Row(
                  children: [
                    Text("Change Password",style: TextStyle(fontSize: 16),),
                    Spacer(),
                    IconButton( icon:Icon(Icons.arrow_forward_ios_outlined),onPressed: (){},),
                  ],
                ),
              ),

              SizedBox(height: 15,),

              Container(
                padding: EdgeInsets.only(left: 10),
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                 color:Color.fromARGB(255, 252	,254,178), ),
                child: Row(
                  children: [
                    Text("Change Email Address",style: TextStyle(fontSize: 16),),
                    Spacer(),
                    IconButton( icon:Icon(Icons.arrow_forward_ios_outlined),onPressed: (){},),
                  ],
                ),
              ),


                  
                  
              ],
            ),
          ),
        )
   
            
          );

        
        
       
}}