import 'package:flutter/material.dart';
import 'package:login_ui/main.dart';
import '1.dart';
import '2.dart';
import '3.dart';
import '4.dart';
import 'main.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPage createState() => _FirstPage();
}

class _FirstPage extends State<FirstPage> {
  int count=0;

  void increment()
  {
    setState(() {
        count=count+1;
    });
  
  }

  int currentindex=1;
    setcurrentindex(int index){
    setState(() {
      currentindex=index;
    });
    Navigator.of(context).pop();
  }
  getcurrentoption()
  {
      switch(currentindex){
        case 1:
          return FirstOption();
          break;
        case 2:
          return SecondOption();
          break;
        case 3:
          return ThirdOption();
          break;
        case 4:
          return FourthOption();
          break;  
      }
  }



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 30.0),
                width: double.infinity,
                color: Colors.blue,
                height: 285.0,
                child: new Column(
                 children: <Widget>[
                    Image.asset(
                        "assets/profile.png",                      
                        height: 120.0,
                        ),
                      SizedBox(height: 10.0),
                      Text(
                        'Riswan Basha S',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                        ),
                      ),
                       Text(
                        'riswanbasha26@gmail.com',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),  
                      SizedBox(height: 3.0,),
                      Text(
                        'DOB: 26/04/2000',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                        ),
                      ),
                          
                      SizedBox(height: 3.0),
                       Text(
                        '9087897058',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13.0,
                        ),
                        
                      ),
                       SizedBox(height: 3.0),
                       Text(
                        'www.linkedin.com/in/riswan-basha-26RB',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13.0,
                        ),
                        
                      ),
                 ],
                ),
                
              ),
            
              ListTile(
                selected: currentindex==1?true:false,
                onTap: () {
                  setcurrentindex(1);
                },
                leading: Icon(Icons.playlist_add_check),
                title: Text('About',style: TextStyle(fontSize: 20.0),),
              ),
              SizedBox(height:5.0),
              ListTile(
                selected: currentindex==2?true:false,
                onTap: () {
                  setcurrentindex(2);
                },
                leading: Icon(Icons.playlist_add_check),
                title: Text(
                  'Skill-Set',
                  style: TextStyle(fontSize: 20.0),
                  ),
              ),
               SizedBox(height:5.0),
              ListTile(
                selected: currentindex==3?true:false,
                onTap: () {
                  setcurrentindex(3);
                },
                leading: Icon(Icons.playlist_add_check),
                title: Text('Likes',style: TextStyle(fontSize: 20.0),),
              ),
               SizedBox(height:5.0),
                ListTile(
                selected: currentindex==4?true:false,
                onTap: () {
                   Navigator.pushReplacement(context, MaterialPageRoute(
                                 builder: (context){
                                   return App();
                                 }
                               )
                        );
                },
                leading: Icon(Icons.playlist_add_check),
                title: Text('Log Out',style: TextStyle(fontSize: 20.0),),
              ),
            ],
          ),
        ),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
              title: new Text('Profile'),
            centerTitle: true,
            elevation: 5.0,
            backgroundColor: Colors.blue,

          ),  
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: increment,
          child: Icon(Icons.favorite),
          backgroundColor: Colors.red,
          ),
          body:new Container(
        padding: EdgeInsets.all(50.0),
        width:double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.1,0.4,0.7,0.9],
            colors: [
              Colors.blue[600],
              Colors.blue[500],
              Colors.blue[300],
              Colors.blue[200],
            ],
            ),
        ),
                  child: new Column(
                    children: <Widget>[
                       Text(
                         count.toString()+' Hearts',
                         style: TextStyle(
                           fontSize: 20.0,
                         ),
                       ),
                       getcurrentoption(),
                    ],
                  ) 
                  ),
            );

  }
}