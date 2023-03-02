import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:waslna/shared/MyApplication.dart';
import 'package:waslna/driver/profiledriverscreen.dart';

class editinformationdriver extends StatefulWidget {
const editinformationdriver({super.key});

  @override
  State<editinformationdriver> createState() => _editinformationdriverState();
}

class _editinformationdriverState extends State<editinformationdriver> {
 

TextEditingController emaildriverController = TextEditingController();
TextEditingController firstnamedriverController = TextEditingController();
TextEditingController secondnamedriverController = TextEditingController();
TextEditingController passworddriverController = TextEditingController();
TextEditingController phonedriverController = TextEditingController();
TextEditingController addressdriverController = TextEditingController();
  final GlobalKey<FormState> driverKey = GlobalKey<FormState>();
  String password ='';
  bool isPasswordVisible = false;
  
  void initState() {
    super.initState();
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
  
        body: ListView(
          children: 
                [Form(
                  key: driverKey,
            child:Container(
                  margin: const EdgeInsets.all(15),
                  child:Column(
                    children: [
                      Center(child: Text("Edit Personal Info",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400) )),
                      SizedBox(height: 25),
                  
                  TextFormField(
                    controller: firstnamedriverController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter your Name";
                      } else if (value.length <= 3) {
                        return "name must be more than 3 fileds";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 252	,254,178),
                      hintText: 'First Name',
                      //labelText: 'Email',
                      
                         focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Color.fromARGB(255, 252	,254,178), ),
                          ),
                         enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color:Color.fromARGB(255, 252	,254,178)),
                          ),
                       /*border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.green)
                      ),*/
                      
                      
                    ),
                    //keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: secondnamedriverController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter your Name";
                      } else if (value.length <= 3) {
                        return "name must be more than 3 fileds";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 252	,254,178),
                      hintText: 'Second Name',
                      //labelText: 'Email',
                         focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Color.fromARGB(255, 252	,254,178), ),
                          ),
                         enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color:Color.fromARGB(255, 252	,254,178)),
                          ),
                       /*border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.green)
                      ),*/
                      
                      
                    ),
                  //  keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                  ),
                  SizedBox(
                    height: 10,
                  ),
        
                  TextFormField(
                    controller: emaildriverController,
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
                      filled: true,
                      fillColor: Color.fromARGB(255, 252	,254,178),
                      hintText: 'Email',
                      //labelText: 'Email',
                      suffixIcon: emaildriverController.text.isEmpty
                      ? Container(width: 0)
                      : IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () => emaildriverController.clear(),),
                         focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Color.fromARGB(255, 252	,254,178), ),
                          ),
                         enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color:Color.fromARGB(255, 252	,254,178)),
                          ),
                       /*border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.green)
                      ),*/
                      
                      
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    controller: passworddriverController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter your password";
                      } else if (value.length <= 7) {
                        return "password must be more than 7 fileds";
                      }
                      return null;
                    },
                    onChanged: (value)=>setState(()=>this.password=value),
                   // onSubmitted: (value) => setState(()=>this.password=value ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 252	,254,178),
                      hintText: 'password',
                      //labelText: 'password',
                       suffixIcon: IconButton(
                        icon: isPasswordVisible
                       ?Icon(Icons.visibility_off)
                       :Icon(Icons.visibility),
                       onPressed: () => setState(()=> isPasswordVisible =! isPasswordVisible),
                       ),
                       focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                       borderSide: BorderSide(color: Color.fromARGB(255, 252	,254,178)),
                        ),
                       enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                       borderSide: BorderSide(color: Color.fromARGB(255, 252	,254,178)),
                       ),
                      /*border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(255, 7, 212, 24),width: 3),
                        borderRadius: BorderRadius.circular(16),
                      )*/
                    ),
                    obscureText: isPasswordVisible,
                    
                    
                  ),
                  SizedBox(
                    height: 8,
                  ),

                  TextFormField(
                    controller: phonedriverController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter your Phone";
                      } else if (value.length <= 10) {
                        return "Phone must be more than 11 fileds";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 252	,254,178),
                      hintText: 'Phone Number',
                         focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Color.fromARGB(255, 252	,254,178), ),
                          ),
                         enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color:Color.fromARGB(255, 252	,254,178)),
                          ),
                       /*border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.green)
                      ),*/
                      
                      
                    ),
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.done,
                    maxLength: 11,
                  ),
                  
                  TextFormField(
                    controller: addressdriverController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter your Address";
                      } else if (value.length <= 4) {
                        return "Address must be more than 4 fileds";
                      }
                      return null;
                    },
                    
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 252	,254,178),
                      hintText: 'Address',
                         focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Color.fromARGB(255, 252	,254,178), ),
                          ),
                         enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color:Color.fromARGB(255, 252	,254,178)),
                          ),
                      
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                  ),


                  SizedBox(height: 25,),

                   Row(
                     children: [
                       Container(
                         //   margin: EdgeInsets.only(top: 0,right:20,bottom: 10),
                        width: 160,
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
                          onPressed: () 
                          {
                             if (driverKey.currentState!.validate()) {
                            myApplication.navigateTo(
                              profiledriverscreen(
                                firstnamedriver:firstnamedriverController.text,
                                secondnamedriver:secondnamedriverController.text,
                                emaildriver:emaildriverController.text,
                              ), context);
                         }
                           },
                           child: Text('Save',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                            ),),
                        )
                ),
                Spacer(),


                 Container(
              //  margin: EdgeInsets.only(top: 0,right:20  ,bottom: 10),
                width: 160,
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
            
            )),          
            ),
              ],
        )),
    );
  }
}
