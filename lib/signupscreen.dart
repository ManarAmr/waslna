import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:waslna/loginscreen.dart';
import 'package:waslna/main.dart';
import 'package:waslna/signupscreen.dart';
import 'package:waslna/aboutscreen.dart';
import 'package:waslna/shared/MyApplication.dart';
class signupscreen extends StatefulWidget {
  const signupscreen({super.key});

  @override
  State<signupscreen> createState() => _signupscreenState();
}
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

final GlobalKey<FormState> myKey = GlobalKey<FormState>();

class _signupscreenState extends State<signupscreen> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
 // final emailController = TextEditingController();
  String password ='';
  bool isPasswordVisible = false;
  
  
  @override
  Widget build(BuildContext context) {
    var secondnameController;
    var firstnameController;
    var addressController;
    var phoneController;
    void initState() {
    super.initState();
    emailController.addListener(()=> setState(() {
    }));
    firstnameController.addListener(()=> setState(() {
    }));
    secondnameController.addListener(()=> setState(() {
    }));
    addressController.addListener(()=> setState(() {
    }));
    phoneController.addListener(()=> setState(() {
    }));
    passwordController.addListener(()=> setState(() {
    }));
  }
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
                  key: myKey,
            child:Container(
                  margin: const EdgeInsets.all(15),
                  child:Column(
                    children: [
                      Row(
                        children: [
                          Text("Sign up",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400) ),
                        ],
                      ),
                      SizedBox(height: 15),
                  
                  TextFormField(
                    controller: firstnameController,
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
                    controller: secondnameController,
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
                    controller: emailController,
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
                      suffixIcon: emailController.text.isEmpty
                      ? Container(width: 0)
                      : IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () => emailController.clear(),),
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
                    controller: passwordController,
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
                    controller: phoneController,
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
                      hintText: 'Phone',
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
                    controller: addressController,
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
        
        
                 Container(
                      margin: const EdgeInsets.only(top: 0),
                      width: 600,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.amber, width: 3,),
                      ),
                      child: TextButton(


                        onPressed: () {
                        if (myKey.currentState!.validate()) {
                          myApplication.navigateToRemove(
                              context,aboutscreen(
                        //           emaill: emailllController.text,
                          //        password: passwordController.text,
                              )
                              );
                            myApplication.showToast(
                              text: "sign up succesfully",
                              color: Colors.green);
                        }
                      },

                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.amber,
                        ),
                        /*onPressed: () {
                        //  Navigator.push(
                           // context,
                      //      MaterialPageRoute(builder: (context) => Page3()),
                    //      );
                        },*/
                        child: Text('Sign UP',
                          style: TextStyle(
                            fontSize: 20,
                          ),),
                      )
                  ),
        
        
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Do You have An Account ? "),
                      TextButton(onPressed: (){
                         myApplication.navigateTo(
                              loginscreen()
                             ,context );;
                     },
                      child: Text("LOGIN", style: TextStyle(color: Colors.amber),))
                    ],
                  ),
        
                  Text("Or"),
        
                  SizedBox(height: 8,),                
        
                  Center(
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                      onPressed: () {
                      _googleSignIn.signIn().then((value) {
                        String userName = value!.displayName!;
                        String profilePicute = value.photoUrl!;
                        print(userName);
                      });
                    },
                    color: Color.fromARGB(255, 254	,198	,40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/google.jpeg',fit: BoxFit.cover,
                         height: 50),
                        Text(" Continue with Google ",style: TextStyle(
                          fontSize: 20
                        ),),
                      ],
                    ),
                      ),
                  )
        
            ],
            
            )),
          
          
                ),
              ],
        )),
    );
  }
}

/* Navigator.pushReplacement<void, void>(
    context,
    MaterialPageRoute<void>(
      builder: (BuildContext context) => const MyHomePage(),
    ),*/