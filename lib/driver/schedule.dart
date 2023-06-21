import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.black),
            backgroundColor:Color.fromARGB(255, 254	,198	,40),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
             //   SizedBox(width: 45,),
                Image.asset('assets/bus5.jpeg',
                fit: BoxFit.cover,
                height: 50,),
                SizedBox(width: 5,),
                Text(" WASLNA",
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'ZCOOL XiaoWei',
                  color: Colors.black
                ),),
              ],
            ) ,
      ),


      body: Container(
        margin: EdgeInsets.only(left: 10,top: 15),
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Saturday'),
              subtitle: Text('Wee k End'),
            ),
            ListTile(
              title: Text('Sunday'),
              subtitle: Text('7:30 AM - 2:30 PM'),
            ),
            ListTile(
              title: Text('Monday'),
              subtitle: Text('7:30 AM - 2:30 PM'),
            ),
            ListTile(
              title: Text('Tuesday'),
              subtitle: Text('7:30 AM - 2:30 PM'),
            ),
            ListTile(
              title: Text('Wednesday'),
              subtitle: Text('7:30 AM - 2:30 AM'),
            ),
            ListTile(
              title: Text('Thursday'),
              subtitle: Text('8:00 AM - 2:00 PM'),
            ),
            ListTile(
              title: Text('Friday'),
              subtitle: Text('Week End'),
            ),
          ],
        ),
      ),
    );
  }
}