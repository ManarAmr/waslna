import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:waslna/paymentscreen.dart';
import 'package:waslna/shared/MyApplication.dart';
import 'package:qr_image/qr_image.dart';

class GenerateQrCodePage extends StatefulWidget {
  const GenerateQrCodePage({Key? key}) : super(key: key);

  @override
  State<GenerateQrCodePage> createState() => _GenerateQrCodePageState();
}

class _GenerateQrCodePageState extends State<GenerateQrCodePage> {
  String qrData = 'Enter Your Name First';
  final qrText = TextEditingController();
  final GlobalKey<FormState> _myKey = GlobalKey<FormState>();

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
          iconTheme:IconThemeData(color: Colors.black),
          backgroundColor: Colors.amber,
          title: const Text(
            'Absence QR Code',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        //  centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _myKey,
            child: Container(
              padding: const EdgeInsets.only(top: 30, left: 20.0, right: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text("Absence QR ",
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      textAlign: TextAlign.center),
                  const SizedBox(
                    height: 30,
                  ),

                /*  Container(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 250,
                      child: QrImage(
                        data: qrData,
                        
                      ),),),*/
              
                   
                    SizedBox(height: 40,),
                    
                  Container(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                   child:   TextFormField(
                      controller: qrText,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "please enter your Name";
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                        hintText: 'Enter Your Name First',
                         focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                         borderSide: BorderSide(color: Colors.amber),
                          ),
                         enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                         borderSide: BorderSide(color: Colors.amber),
                         ),
                      ),
                
                    ),
                   ),
          
                   SizedBox(height: 15,),
              
              
              
                Container(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    height: 50.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.amber,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Colors.amber,
                            width: 1.0,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (qrText.text.isEmpty) {
                          setState(() {
                            qrData = "Enter Name First ";
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  "Please Enter your Name!",
                                  style: TextStyle(fontSize: 17.0),
                                ),
                              ),
                            );
                          });
                        } else {
                          setState(() {
                            qrData = qrText.text;
                          });
                        }
                      },
                      child: const Text(
                        "Generate QR And Download",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),),
          
          
              
                  Container(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 250,
                      child: QrImageView(
                        data: qrData,
                        
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
          
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                                  TextButton(
                                    style: TextButton.styleFrom(
                                     foregroundColor: Colors.amber,
                                      textStyle: TextStyle(fontWeight: FontWeight.bold)),
                                    onPressed: (){
          
                                //  myApplication.navigateToRemove( context,paymentscreen());
                                 if (_myKey.currentState!.validate()) {
                            myApplication.navigateTo(paymentscreen(), context);
                                    }},
                                     child: Text("Next",style: TextStyle(fontSize: 30),)),
                       
                    ],
                  ),
                 /* const Divider(
                    height: 20.0,
                    thickness: 1.0,
                    color: Colors.black,
                    endIndent: 42.0,
                    indent: 42.0,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                    child: const Text(
                      "You can also generate your own QR Code by entering the text below",
                      style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  TextField(
                    controller: qrText,
                    decoration: const InputDecoration(
                      hintText: "Enter your Data",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 14.0,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 55.0, right: 55.0),
                    height: 50.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Colors.black,
                            width: 1.0,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(
                            32.0,
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (qrText.text.isEmpty) {
                          setState(() {
                            qrData = "https://www.github.com/kamranhccp";
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  "Please enter some Data!",
                                  style: TextStyle(fontSize: 17.0),
                                ),
                              ),
                            );
                          });
                        } else {
                          setState(() {
                            qrData = qrText.text;
                          });
                        }
                      },
                      child: const Text(
                        "Generate QR Code",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),*/
                  const SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}