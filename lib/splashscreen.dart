import 'dart:async';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:waslna/shared/MyApplication.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:waslna/parent_driver.dart';
import 'package:page_transition/page_transition.dart';



class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  startTimer(){
    Timer(const Duration(seconds: 8), () async{

      myApplication.navigateToRemove(
                              context,const parent_driverscreen()
                              );

    });
  }
  void initState(){
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
          backgroundColor:Colors.white,
          toolbarHeight: 0),

          body:Column(
            children:<Widget> [
              Container(
                margin: const EdgeInsets.only(top: 120,left:0 ),
                alignment: Alignment.center,height: 300,
                  width: 300,
                child: Lottie.asset('assets/114462-bus-transport.json',
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'WASLNA',
                  style: TextStyle(
                    fontSize: 60,
                    fontFamily: 'ZCOOL Xiaowei',
                  ),
                ),
              ),
              Container(
            child: Text(
              'waiting !',style: TextStyle(
    fontSize: 20,),
            ),
            alignment: Alignment.center,
          )
            ],
          ),
      );

  }
}


/*import 'dart:async';
import 'package:waslna/shared/MyApplication.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:waslna/parent_driver.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {


  startTimer(){
    Timer(const Duration(seconds: 6), () async{

      myApplication.navigateToRemove(
                              context,parent_driverscreen()
                              );

       // Navigator.push(context, MaterialPageRoute(builder: ((context) => loginscreen())));

    });
  }

  void initState(){
    super.initState();
    startTimer();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor:Colors.white,
          toolbarHeight: 0),

      body:Column(
        children:<Widget> [
          Container(
            margin: EdgeInsets.only(top: 150,left:0 ),
             child: Image(image: AssetImage('assets/bus5.jpeg',
             ),height: 300,
                 width: 300,),
            alignment: Alignment.center,
            ),
            SizedBox(height: 20,),
          Container(
            child: Text('WASLNA',
                style: TextStyle(
                 fontSize: 60,
                   fontFamily: 'ZCOOL Xiaowei'),
                 ),
            alignment: Alignment.center,
           ),
          Container(
            child: Text(
              'waiting !',style: TextStyle(
    fontSize: 20,),
            ),
            alignment: Alignment.center,
          )


        ],
      )



    );
  }
}*/