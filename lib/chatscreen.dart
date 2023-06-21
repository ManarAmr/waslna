
import 'package:flutter/material.dart';

class Chatscreen extends StatefulWidget {
  @override
  _ChatscreenState createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {
  TextEditingController messageController = TextEditingController();
  List<String> messages = [];

  void _sendMessage() {
    setState(() {
      messages.add(messageController.text);
      messageController.clear();
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
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 60,),
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


          
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: ListView.builder(
                reverse: true,
                itemCount: messages.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.only(top: 10,left: 220,right: 10),
              
                 // margin: EdgeInsets.symmetric(vertical: 4,horizontal: 100,),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)
                      )
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(messages[index],
                      style: TextStyle(
                     fontSize: 20,),
                      textAlign: TextAlign.left,
                      ),
                     
                    ),
                  );
                },
              ),
            ),
            
                  SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
            
              decoration: BoxDecoration(
                    border: Border(
                    top:BorderSide(color: Colors.amber,
                    width: 2) )),
                    
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: messageController,
                      decoration: InputDecoration(hintText: 'Type a message'),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: _sendMessage,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
class Chatscreen extends StatefulWidget {
  const Chatscreen({super.key});

  @override
  State<Chatscreen> createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {




//final _firestore=FirebaseFirestore.instance;
//String? messageText;
/*void getmessages()async{
final messages =await _firestore.collection('messages').get();
for (var message in messages.docs){
  print(message.data());
}
}*/
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
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 45,),
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
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                    top:BorderSide(color: Colors.amber,
                    width: 2) )),
                  child: Row(
                    children: [
                      Expanded(
                        child:TextField(
                          onChanged: (value){
                         //   messageText=value;
                          },
                        decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 17),
                       hintText: 'Write your message here .....',
                       border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                       ),
                       ),),
                      
                      TextButton(
                        onPressed: (){

                          
                          
                       // _firestore.collection("messages").add({
                         // 'text':messageText, } );
                       
                      }, 
                      child: Text("send",style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),)),
                      
                    ],
                  ),

                  
                ),
              ],
            ),
          ),
      ),
    );
  }
}
*/