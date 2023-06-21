import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:waslna/sign_loginscreen.dart';
import 'package:waslna/driver/sign_logdriver.dart';
class parent_driverscreen extends StatelessWidget {
  const parent_driverscreen({super.key});

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
                SizedBox(width: 5,),
                Text("WASLNA",
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'ZCOOL XiaoWei',
                  color: Colors.black
                ),),
              ],
            ) ,
          ),


          body:Column(
          children:<Widget> [
              Container(
             margin: EdgeInsets.only(top: 50,left:0 ),
               child: Image(image: AssetImage('assets/bus2.jpeg',)
              ,height: 300,
                 width: double.infinity,),
              alignment: Alignment.center,
              ),
            Container(
              margin: EdgeInsets.only(top: 30,left:0 ,bottom: 60),
              child: Text('Hello !',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),),
            ),

                Container(
                    margin: EdgeInsets.only(top: 0,right:10 ,left:10 ,bottom: 10),
                    width: 360,
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
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.amber,


                        ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => signup_loginscreen()),
                        );
                      },
                      child: Text('AS a parent',
                        style: TextStyle(
                          fontSize: 20,
                        ),),


                    )
                ),

            Container(
              margin: EdgeInsets.only(top: 0,right:10 ,left:10 ,bottom: 10),
                width: 360,
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
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                  shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(15) )
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => sign_logdriver()),
                    );

                  },

                  child: Text('AS a Driver',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.yellow,
                    ),),
                        )

                )

          ]
        )
    );
  }
}
   