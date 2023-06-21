import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:waslna/currentlocationscreen.dart';
import 'package:waslna/mapscreen.dart';
import 'package:waslna/qrcodescreen.dart';
import 'package:waslna/shared/MyApplication.dart';
class Reservationscreen extends StatefulWidget {
  const Reservationscreen({super.key});
  
  @override
  State<Reservationscreen> createState() => _ReservationscreenState();
}
TextEditingController locationInput = TextEditingController();

class _ReservationscreenState extends State<Reservationscreen> {
 String dropdownvalue = 'Reservation for  1 month';   
  
  // List of items in our dropdown menu
  var items = [    
    'Reservation for  1 month',
    'Reservation for 2  month',
    'Half Term',
    'One year',
  ];

  final name = TextEditingController();
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
              backgroundColor: Color.fromARGB(255, 254, 198, 40),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/bus5.jpeg',
                    fit: BoxFit.cover,
                    height: 50,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "WASLNA",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'ZCOOL XiaoWei',
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            body:SingleChildScrollView(

              child: Container(
                margin: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 25),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                    "Reservation",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                   Text("Enter Full Name :-",
                      style: TextStyle(
                        fontSize: 25,
                      )),
                  SizedBox(
                    height: 15,
                  ), 

                  TextField(
                    controller: name,
                    decoration: InputDecoration(
                      hintText: 'Full Name',
                      filled: true,
                      fillColor: Color.fromARGB(255, 252, 254, 178),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 252, 254, 178),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 252, 254, 178)),
                      ),
                  ),
                  ), 
                 SizedBox(
                    height: 10,
                  ),


                  SizedBox(height: 10,),
                 
                  Text("Age :-",
                      style: TextStyle(
                        fontSize: 25,
                      )),
                  SizedBox(
                    height: 15,
                  ), 

                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Age',
                      filled: true,
                      fillColor: Color.fromARGB(255, 252, 254, 178),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 252, 254, 178),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 252, 254, 178)),
                      ),
                  ),
                  ),

                  SizedBox(height: 10,),
                 
                  Text("Number of Children :-",
                      style: TextStyle(
                        fontSize: 25,
                      )),
                  SizedBox(
                    height: 15,
                  ), 

                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Number of Children',
                      filled: true,
                      fillColor: Color.fromARGB(255, 252, 254, 178),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 252, 254, 178),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 252, 254, 178)),
                      ),
                  ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Reservation periodic  :-",
                      style: TextStyle(
                        fontSize: 25,
                      )),
                      SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.only(left: 10),
             decoration: BoxDecoration(
                color:Color.fromARGB(255, 252, 254, 178), //<-- SEE HERE
                border: Border.all( color: Color.fromARGB(255, 252, 254, 178)  ),
                 borderRadius: BorderRadius.circular(12),
                   ),
              child: DropdownButton(
                // Initial Value
                value: dropdownvalue,
                dropdownColor:Color.fromARGB(255, 252, 254, 178),
               // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),    
                // Array list of items
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) { 
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
            ),




                 
                  SizedBox(height: 10,),
                 
                  Text("School Name :-",
                      style: TextStyle(
                        fontSize: 25,
                      )),
                  SizedBox(
                    height: 15,
                  ), 

                  TextField(
                    decoration: InputDecoration(
                      hintText: 'School Name',
                      filled: true,
                      fillColor: Color.fromARGB(255, 252, 254, 178),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 252, 254, 178),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 252, 254, 178)),
                      ),
                  ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Text("Location ",style: TextStyle(fontSize: 25, ),),
                    SizedBox(
                    height: 15,
                  ),
                    
                TextField(
                    controller: locationInput,
                    //editing controller of this TextField
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 252, 254, 178),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 252, 254, 178),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 252, 254, 178)),
                      ),
                        
                      prefixIcon: Icon(Icons.location_on_outlined), 
                      
                      hintText: "Enter Location ",
                
                    ),
                     readOnly: true,
                     onTap: () {
                       Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                return const CurrentLocationScreen();
              }));   },
                     ),
                     SizedBox(height: 20,),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 150,
                            height: 50,
                            child: ElevatedButton(onPressed: (){
                             myApplication.navigateTo(GenerateQrCodePage(), context);
                             myApplication.showToast(
                              text: "Data Saved succesfully",
                              color: Colors.green);
                              },
                              style:  ElevatedButton.styleFrom(      
                                backgroundColor:Color.fromARGB(255, 254, 198, 40),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                              ),
                               child: Text("save",style: TextStyle(fontSize: 30),)),
                          ),

                          SizedBox(
                            width: 150,
                            height: 50,
                            child: ElevatedButton(onPressed: (){
                            myApplication.navigateToReplace(Reservationscreen(), context);
                              },
                              style:  ElevatedButton.styleFrom(      
                                backgroundColor:Color.fromARGB(255, 254, 198, 40),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                              ),
                               child: Text("Cancel",style: TextStyle(fontSize: 30),)),
                          ),
                        ],
                      ),




                  




                  ],
                ) ,
              ),
            ),



         /*   SingleChildScrollView(
            child: Container(
                margin: Ed7geInsets.only(left: 20, top: 20, right: 20, bottom: 25),
                child:
                    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    "Reservation",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 50,
                  ),*/
    
            
    
      ),
    );
  }
}

/*import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:waslna/currentlocationscreen.dart';
import 'package:waslna/mapscreen.dart';
import 'package:waslna/paymentscreen.dart';
import 'package:waslna/shared/MyApplication.dart';

class Reservationscreen extends StatefulWidget {
  const Reservationscreen({super.key});

  @override
  State<Reservationscreen> createState() => _ReservationscreenState();
}

class _ReservationscreenState extends State<Reservationscreen> {
  TextEditingController dateInput = TextEditingController();
  TextEditingController timeInput = TextEditingController();
  TextEditingController locationInput = TextEditingController();
  var _timePickerTheme;
  

  @override
// date
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }
//time 
TimeOfDay _time = TimeOfDay.now();


  void _selectTime() async {
    final TimeOfDay? newTime = await showTimePicker(


  builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            // This uses the _timePickerTheme defined above
           timePickerTheme: TimePickerThemeData(
            entryModeIconColor: Color.fromARGB(255, 254, 198, 40),
            dayPeriodColor:  MaterialStateColor.resolveWith((states) =>
            states.contains(MaterialState.selected)
             ? Color.fromARGB(255, 254, 198, 40)
             : Colors.white),

            
           dayPeriodTextColor:  MaterialStateColor.resolveWith((states) =>
              states.contains(MaterialState.selected)
              ? Colors.white
              : Colors.black),

         hourMinuteColor: MaterialStateColor.resolveWith((states) =>
            states.contains(MaterialState.selected)
             ? Color.fromARGB(255, 254, 198, 40)
             : Color.fromARGB(255, 254, 198, 40)),
          hourMinuteTextColor: MaterialStateColor.resolveWith((states) =>
              states.contains(MaterialState.selected)
              ? Colors.black
              : Colors.black),
            dialHandColor: Color.fromARGB(255, 254, 198, 40),
            dialTextColor: MaterialStateColor.resolveWith((states) =>
              states.contains(MaterialState.selected)
               ? Colors.white
               : Colors.black),
             ),
               textTheme: TextTheme(
                overline: TextStyle(
                 color: Colors.black,
               ),),
            
            textButtonTheme: TextButtonThemeData(
              style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith((states) => Color.fromARGB(255, 254, 198, 40)),
                foregroundColor: MaterialStateColor.resolveWith((states) => Colors.white),)
            ),
          ),
          child: child!,
        );
      },


      context: context,
      initialTime: _time,
    );
    if (newTime != null) {
      setState(() {
        _time = newTime;
      });
    }
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
            backgroundColor: Color.fromARGB(255, 254, 198, 40),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/bus5.jpeg',
                  fit: BoxFit.cover,
                  height: 50,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "WASLNA",
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'ZCOOL XiaoWei',
                      color: Colors.black),
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
                margin: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 25),
                child:
                    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    "Reservation",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text("The Date",
                      style: TextStyle(
                        fontSize: 25,
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    controller: dateInput,
                    //editing controller of this TextField
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 252, 254, 178),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 252, 254, 178),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 252, 254, 178)),
                      ),
          
                      prefixIcon: Icon(Icons.calendar_today), //icon of text field
                      hintText: "Enter Date",
                      //      labelText: "Enter Date" //label text of field
                    ),
                    readOnly: true,
                    //set it true, so that user will not able to edit text
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          builder: (context, child) {
                            return Theme(
                              data: Theme.of(context).copyWith(
                                colorScheme: ColorScheme.light(
                                  primary: Color.fromARGB(255, 254, 198, 40), 
                                  onPrimary: Colors.black, 
                                  onSurface: Color.fromARGB(255, 2, 1, 1), 
                                ),
                                textButtonTheme: TextButtonThemeData(
                                  style: TextButton.styleFrom(
                                    primary: Colors.black, // button text color
                                  ),
                                ),
                              ),
                              child: child!,
                            );
                          },
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1950),
                          //DateTime.now() - not to allow to choose before today.
                          lastDate: DateTime(2100));
          
                      if (pickedDate != null) {
                        print(
                            pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                        String formattedDate =
                            DateFormat('dd-MM-yyyy').format(pickedDate);
                        print(
                            formattedDate); //formatted date output using intl package =>  2021-03-16
                        setState(() {
                          dateInput.text =
                              formattedDate; //set output date to TextField value.
                        });
                      } else {}
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "The Time ",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  Text(" Enter to change selected time",style: TextStyle(color:Colors.black),),
                  SizedBox(
                    height: 5,
                  ),
          
                TextField(
                    controller: timeInput,
                    //editing controller of this TextField
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 252, 254, 178),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 252, 254, 178),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 252, 254, 178)),
                      ),
          
                      prefixIcon: Icon(Icons.timer_outlined), 
                      
                      hintText: "Selected time: ${_time.format(context)}",

                    ),
                     readOnly: true,
                     onTap: _selectTime ,
                    ),

                     SizedBox(
                    height: 40,
                  ),

                    Text("Location ",style: TextStyle(fontSize: 25, ),),

                    SizedBox(
                    height: 30,
                  ),
                    
                TextField(
                    controller: locationInput,
                    //editing controller of this TextField
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 252, 254, 178),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 252, 254, 178),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 252, 254, 178)),
                      ),
                        
                      prefixIcon: Icon(Icons.location_on_outlined), 
                      
                      hintText: "Enter Location ",
                
                    ),
                     readOnly: true,
                     onTap: () {
                       Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                return const CurrentLocationScreen();
              }));
                       
                     },
                     ),


                     

                    SizedBox(height: 40,),


                    Center(
                      child: SizedBox(
                        width: 150,
                        height: 50,
                        child: ElevatedButton(onPressed: (){

                           myApplication.navigateTo(paymentscreen(), context);
                        },
                        
                        style:  ElevatedButton.styleFrom(
                                      
                          backgroundColor:Color.fromARGB(255, 254, 198, 40),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                                          
                        ),
                        
                         child: Text("Done",style: TextStyle(fontSize: 25),)
                         
                         ),
                      ),
                    ),



                  
          
                ])
                
                ),
          )),
    );
  }
}*/