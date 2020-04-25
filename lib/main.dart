import 'package:flutter/material.dart';
import 'firstpage.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: App(),
    
  ));
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  final formkey=GlobalKey<FormState>();
  final scaffoldkey= GlobalKey<ScaffoldState>();

  @override
   
  Widget build(BuildContext context) {
   
    return Scaffold(
      key: scaffoldkey,
      body: new Container(
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
        child: Center(        
          child: new ListView(
            shrinkWrap: true,
            children: <Widget>[
              Image.asset(
                "assets/icon.png",
                height: 150.0,
                color: Colors.white,
                ),
                SizedBox(
                  height: 50.0,
                ),
                Form(
                  key: formkey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                             return "Please Enter Username";
                          }  
                          else if (value.length>30){
                            return "Username should not exceed 30 characters ";
                          }
                          return null;                      
                        },
                   decoration: InputDecoration(
                    icon: Icon(Icons.account_circle,color: Colors.white), 
                    hintText: 'Username',  
                    hintStyle: TextStyle(
                      color: Colors.white70,
                    )
                  ),
                ),
                 SizedBox(
                  height: 30.0,
                ),
                TextFormField(
                  obscureText: true,
                     validator: (value) {
                          if (value.isEmpty) {
                             return "Please Enter Passwword";
                          }  
                          return null;                      
                        },
                   decoration: InputDecoration(
                    icon: Icon(Icons.lock,color: Colors.white), 
                    hintText: 'Password',  
                    hintStyle: TextStyle(
                      color: Colors.white70,
                    ) 
                  ),
                ),
                    ],
                  )
                ),
                 SizedBox(
                  height: 50.0,
                ),
                Container(
                   decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.1,0.3,0.6,0.8],
                      colors: [
                        Colors.blue[600],
                        Colors.blue[500],
                        Colors.blue[300],
                        Colors.blue[200],
                        ],
                      ),
                    ),
                    child: ButtonTheme(
                      buttonColor: Colors.white10,
                      height: 50.0,
                      minWidth: double.infinity,
                      child: RaisedButton(
                        onPressed: () {
                             if(formkey.currentState.validate()){
                               scaffoldkey.currentState.showSnackBar(
                                 SnackBar(
                                   content: Text('Successfully Entered'),
                                   
                                   ),
                                   
                               );
                              Navigator.push(context, MaterialPageRoute(
                                 builder: (context){
                                   return FirstPage();
                                 }
                               )
                               );
                             }
                             else{
                               scaffoldkey.currentState.showSnackBar(
                                 SnackBar(
                                   content: Text('Error Occured'),
                                   ),
                               );
                             }

                        },
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          ),
                      ),
                    ),
                ),
                 SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Forget Password ?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  ),
               ),
             SizedBox(
                  height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                "assets/google.png",
                color: Colors.blue,
                height: 50.0,
                ),
                 SizedBox(
                  width: 25.0,
              ),
                Image.asset(
                "assets/insta.png",
                height: 60.0,                
                ),
                ],
              ), 
            ],
          ),
         
        ),
      ),
    
      
    );
  }
}





