
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_app_2/SetRow.dart';

class Exercise extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Exercise> {
  @override
  Widget build(BuildContext context) {
    int Counter = 1 ;
    var setCounter = <Widget> [setRow(Counter) ,setRow(Counter+1) ] ;

    return
    Scaffold(
      backgroundColor: Colors.black87 ,
      appBar: AppBar (
          centerTitle: true ,
          backgroundColor: Colors.grey[900],
          title : Text ("Sets , Reps & Weights" ,
            style: TextStyle(
                color: Colors.grey[300],
                fontSize: 24,
                fontWeight:FontWeight.bold

            ),)
      ),

      body :
       Container(
         decoration: BoxDecoration (
           color: Colors.black87
         ),
         child: Center(

           child: Column (
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.spaceAround ,
                      children: setCounter
    ),
         ),
       ),

    )

    ;
  }
}
