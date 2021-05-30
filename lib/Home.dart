

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MyButton.dart' ;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,

        body :
        Center (
          child :
          Column (

              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                Container(
                  padding: EdgeInsets.all(50.0),

                  decoration: BoxDecoration(
                    color: Colors.grey[500] ,
                      border: Border.all(width: 12,color: Colors.amberAccent ),

                      borderRadius: new BorderRadius.circular(16.0),
                    backgroundBlendMode: BlendMode.colorBurn

                  ),
                  child: Text ("Workout Helper" ,
                    style: TextStyle(
                        color : Colors.blue[700]  ,
                        fontSize: 65 ,
                        letterSpacing: 5

                    ),
                    textAlign: TextAlign.center ,
                  ),
                ),
                SizedBox(height: 70,),

                myButton("New Workout"),

                SizedBox(height: 70,),

                myButton("Previous Workout")
              ]
          ),
        )
    );
  }
}