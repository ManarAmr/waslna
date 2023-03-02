
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:waslna/aboutscreen.dart';
import 'package:waslna/loginscreen.dart';
import 'package:waslna/shared/MyApplication.dart';


class paymentscreen extends StatefulWidget {
  const paymentscreen({Key? key}) : super(key: key);

  @override
  State<paymentscreen> createState() => _paymentscreenState();
}

class _paymentscreenState extends State<paymentscreen> {
  /// List of Tab Bar Item
  void initState() {
    super.initState();
  }
  
  List<String> items = [
    "Cash",
    "Cridet Card",
  ];
  List<Widget> contact =[
     Container(
      padding: EdgeInsets.only(left: 25,top: 50),
      width: double.infinity,
      decoration: BoxDecoration(
         color: Colors.amber,
         borderRadius: BorderRadius.circular(25)
     ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Vodafone Cash",style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20),),
          SizedBox(height: 10,),
          Text("Send on 01012345678",style: TextStyle(fontSize: 20),),
          SizedBox(height: 40,),
          Text("Orange Cash",style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20),),  
          SizedBox(height: 10,),
          Text("Send on 01212345678",style: TextStyle(fontSize: 20),),
          SizedBox(height: 220,),
       
           
        ],
      ),
     ),


     Container(
      padding: EdgeInsets.only(left: 25,top:10,right: 25),
      width: double.infinity,
      decoration: BoxDecoration(
         color: Colors.amber,
         borderRadius: BorderRadius.circular(25)
     ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/visa.jpeg'),
          SizedBox(height: 10,),
          TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 252	,254,178),
                    hintText: 'Cridet Card Number',
                       focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Color.fromARGB(255, 252	,254,178), ),
                        ),
                       enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color:Color.fromARGB(255, 252	,254,178)),
                        ),
                  ),
                ),
                SizedBox(height: 10,),

                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 252	,254,178),
                    hintText: 'CVV',
                       focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Color.fromARGB(255, 252	,254,178), ),
                        ),
                       enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color:Color.fromARGB(255, 252	,254,178)),
                        ),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 252	,254,178),
                    hintText: 'Name on Card',
                       focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Color.fromARGB(255, 252	,254,178), ),
                        ),
                       enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color:Color.fromARGB(255, 252	,254,178)),
                        ),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 252	,254,178),
                    hintText: 'Expiry (MM/YY)',
                       focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Color.fromARGB(255, 252	,254,178), ),
                        ),
                       enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color:Color.fromARGB(255, 252	,254,178)),
                        ),
                  ),
                ),
                SizedBox(height: 10,),


                
                

               Container(
              //margin: EdgeInsets.only(top: 0,right:10 ,left:10 ,bottom: 10),
                width: double.infinity,
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.amber,
                    width: 3,
                  ),
                ),

                child: Builder(
                  builder: (context) {
                    return TextButton(

                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Color.fromARGB(255, 252	,254,178),
                      shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(15) )
                      ),
                       onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>aboutscreen()),
                            );
                          },

                      child: Text('Pay Now',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),),
                            );
                  }
                )),
                SizedBox(height: 10,),
          
        ],
      ),
     ),

  ];
  
  int current = 0;
  
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
              //  SizedBox(width: 45,),
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
              margin: EdgeInsets.only(top: 25,left: 20,right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text("Payment",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
               SizedBox(height: 30,),

               SizedBox(
               // width: double.infinity,
                height: 80,
                 child: ListView.builder(
                    shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: items.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) {
                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  current = index;
                                });
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                 width: 135,
                                margin: EdgeInsets.only(top:15,left: 20,right: 10),
                                height: 50,
                                decoration: BoxDecoration(
                                  color: current == index
                                      ? Colors.amber
                                      : Colors.white54,
                                  borderRadius: current == index
                                      ? BorderRadius.circular(10)
                                      : BorderRadius.circular(10),
                                  border: current == index
                                      ? Border.all(
                                          color: Colors.amber, width: 2)
                                      : Border.all(color: Colors.amber) ,
                                ),
                                //cash,card
                                child: Center(
                                  child: Text(
                                    items[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                        color: current == index
                                            ? Colors.black
                                            : Colors.grey,
                                            fontSize: 20,
                                    )/*GoogleFonts.laila(
                                        fontWeight: FontWeight.w500,
                                        color: current == index
                                            ? Colors.black
                                            : Colors.grey),*/
                                  ),
                                ),
                              ),
                 
                              
                        )]);
                  } 
                              ),
               ),

               Container(
                child:Column(
                  children: [
                    contact[current],
                    
                    
                  ],
                ))
               ] )
               )
               ] )
               )
               );
               }
               }


