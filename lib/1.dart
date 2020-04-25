import 'package:flutter/material.dart';

class FirstOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
       children: <Widget>[
         Text(
           'Myself S.Riswan Basha. I hail form Coimbatore. Im Pursuing my ECE degree in KCT. Im very Sensitive and Hardworking. If I get into some work even it is difficult, I will try to complete as soon as possible. Until I get finished, I will not move into other works. I think that is the advantage of myself. My Hobbies are Application Development, playing Cricket and Cooking. Im a little short-temper guy and too very cool. My moto  is just of two words',
           style: TextStyle(fontSize: 22.0,color: Colors.white),
         ),
         SizedBox(height: 15.0),
         Text(
           '"FACE EVERYTHING"',
           style: TextStyle(fontSize: 22.0,color: Colors.black),
         )
        

       ],
        
        
        
      ),
    );
  }
}