import 'package:flutter/material.dart';

class StudentsPage extends StatelessWidget {
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
         margin: EdgeInsets.only(left: 10,right: 10,top: 25,bottom: 25),
        child: Column(
          children: [
            Text("Your Children Information",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
              SizedBox(height: 30,),
            Expanded(
              child: SizedBox(
                child: ListView(
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                      color:Color.fromARGB(255, 252	,254,178),),
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Text('A'),
                        ),

                        title: Text('Ahmed Ali'),
                        subtitle: Text('Grade 3 / 0121696349'),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                      color:Color.fromARGB(255, 252	,254,178),),
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Text('M'),
                        ),
                        title: Text('Mohamed Ahmed'),
                        subtitle: Text('Grade 4 / 010895624'),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                      color:Color.fromARGB(255, 252	,254,178),),
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Text('Y'),
                        ),
                        title: Text('Aya Yasser'),
                        subtitle: Text('Grade 5 / 012287238751'),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                      color:Color.fromARGB(255, 252	,254,178),),
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Text('K'),
                        ),
                        title: Text('Karem mohamed'),
                        subtitle: Text('Grade 6 / 0122886954'),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                      color:Color.fromARGB(255, 252	,254,178),),
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Text('E'),
                        ),
                        title: Text('Emma Amr '),
                        subtitle: Text('Grade 3'),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                      color:Color.fromARGB(255, 252	,254,178),),
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Text('M'),
                        ),
                        title: Text('Manar Amr '),
                        subtitle: Text('Grade 8'),
                      ),
                    ),

                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}