import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:waslna/driver/aboutdrivescreen.dart';
import 'package:waslna/aboutscreen.dart';
import 'package:waslna/shared/MyApplication.dart';
import 'package:waslna/driver/sigupdrivescreen.dart';

class logdriverscreen extends StatefulWidget {
  const logdriverscreen({super.key});

  @override
  State<logdriverscreen> createState() => _logdriverscreenState();
}
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

final GlobalKey<FormState> myKey = GlobalKey<FormState>();
class _logdriverscreenState extends State<logdriverscreen> {

  final GoogleSignIn _googleSignIn = GoogleSignIn();
 // final emailController = TextEditingController();
  String password ='';
  bool isPasswordVisible = false;
  void initState() {
    super.initState();
    emailController.addListener(()=> setState(() {
    }));
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
         // leading: BackButton(color: Colors.black),
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
        
                  Container(
                    width:double.infinity,
                    margin: const EdgeInsets.only(left: 5),
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.start, 
                      children: [
                        Text("LOGIN ", style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                        ),),
        
                        SizedBox(height: 30),
                        
                        Text("W E I C O M ! ", 
                          style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w400 )
                          ),
                        SizedBox(height: 10),
                        Text("login to continue ", 
                          style: TextStyle(
                          fontSize: 15 )
                          ),  
        
                          SizedBox(height: 20,)
                      ],
                    ),                
                  ),
        
                  TextFormField(
                    controller: emailController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter your Email";}
                      else  {
                      if (value.length > 5 && value.contains('@') && value.endsWith('gmail.com')) {
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
                    height: 10,
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
                //    maxLength: 10,
                    
                  ),
        
        
                 Container(
                      margin: const EdgeInsets.only(top: 30),
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
                              context,aboutdrivescreen(
                        //           emaill: emailllController.text,
                          //        password: passwordController.text,
                              )
                              );
                            myApplication.showToast(
                              text: "Logged in succesfully",
                              color: Colors.green);
                        }
                      },

                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.amber,
                        ),
                        child: Text('LOGIN',
                          style: TextStyle(
                            fontSize: 20,
                          ),),
                      )
                  ),
        
        SizedBox(height: 10,), 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Dont have An Account ? "),
                      TextButton(onPressed: (){
                         myApplication.navigateToRemove(
                  context, signupdriver());
                     },
                      child: Text("SIGN UP", style: TextStyle(color: Colors.amber),))
                    ],
                  ),
        
                  Text("Or"),
        
                  SizedBox(height: 20,),                
        
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