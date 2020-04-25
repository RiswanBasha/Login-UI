import 'package:flutter/material.dart';

class SecondOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: <Widget>[
          Text(
             'TECHNICAL',
              style: TextStyle(fontSize: 25.0,color: Colors.black),
              textAlign: TextAlign.center,
          ),
          SizedBox(height: 15.0),
        
        ],       
      ),
    );
  }
}