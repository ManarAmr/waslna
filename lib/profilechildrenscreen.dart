import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';



class profilechildrenscreen extends StatefulWidget {
//final firstnamedriver ;
//final secondnamedriver;
//final emaildriver;
  const profilechildrenscreen({super.key/*, required this.firstnamedriver,required this.secondnamedriver,  required this.emaildriver*/});

  @override
  State<profilechildrenscreen> createState() => _profilechildrenscreenState();
}
class _profilechildrenscreenState extends State<profilechildrenscreen> {

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


 Widget _arrow() {
    return Icon(
      Icons.arrow_forward_ios,
      size: 20.0,
    );
  }
   GlobalKey<FormState> formkey = GlobalKey<FormState>();
   Future<void> showInformationDialog(BuildContext context, {
    required String hintText,
    required IconData prefixIcon,
    required TextInputType keyboardType,
  }) async{
    return await showDialog(context: context, builder: (context){
      final TextEditingController textEditingController = TextEditingController();
      final TextEditingController textEditing2Controller = TextEditingController();
      bool isChecked = false;
      return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
        child: StatefulBuilder(builder: (context,setState){
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
                  SizedBox(
                    height: 10,
                  ),
      
                  TextFormField(
                    controller: textEditing2Controller,
                    validator: (value){
                      return value!.isNotEmpty ? null : 'Invalied Field';
                    },
                    decoration:  InputDecoration(
                      hintText: 'confige your Input',
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
        }),
      );
    });
  }
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
                   Text("Manar" +' '+ "Amr",style: TextStyle(fontSize: 30), ),
    
                   Padding(
                     padding: const EdgeInsets.only(top:8,left: 50,right: 50),
                     child: Divider(color: Colors.black,thickness: 2,),
                   ),
                  Text('manarelbialy01@gmail.com' ,style: TextStyle(fontSize: 15) ) ,
                 // Text(widget.firstnamedriver +' '+ widget.secondnamedriver,style: TextStyle(fontSize: 30), ),
                //  Text(widget.emaildriver ,style: TextStyle(fontSize: 15) )
    
                   
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
                  child: InkWell(
                    onTap: ()async{
                          await showInformationDialog(context,hintText: 'change your password ',prefixIcon: Icons.person,keyboardType: TextInputType.text); 
                   },
                    child: Row(
                      children: [
                        Text("Change Password",style: TextStyle(fontSize: 16),),
                        Spacer(),
                        IconButton( icon:Icon(Icons.arrow_forward_ios_outlined),onPressed: ()async{
                          await showInformationDialog(context,hintText: 'change your password ',prefixIcon: Icons.person,keyboardType: TextInputType.text);
                        },),
                      ],
                    ),
                  ),
                ),
    
                SizedBox(height: 15,),
    
                Container(
                  padding: EdgeInsets.only(left: 10),
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                   color:Color.fromARGB(255, 252	,254,178), ),
                  child: InkWell(
                    onTap:  ()async{
                          await showInformationDialog(context,hintText: 'change your Email ',prefixIcon: Icons.person,keyboardType: TextInputType.text);
                        },
                    child: Row(
                      children: [
                        Text("Change Email Address",style: TextStyle(fontSize: 16),),
                        Spacer(),
                        IconButton( icon:Icon(Icons.arrow_forward_ios_outlined),onPressed: ()async{
                            await showInformationDialog(context,
                            hintText: 'change your Email',
                            prefixIcon: Icons.person,keyboardType: TextInputType.text);
                          },),
                      ],
                    ),
                  ),
                ),
    
    
    
    
    
                                
                ],
              ),
            ),
          )
       
              
            ),
    );

        
        
       
}}