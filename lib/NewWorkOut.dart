import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_app_2/myButton1.dart';
import 'MyButton.dart';

class NewWorkout extends StatefulWidget {
  @override
  _NewWorkoutState createState() => _NewWorkoutState();
}

class _NewWorkoutState extends State<NewWorkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar (
        centerTitle: true ,
        backgroundColor: Colors.grey[900],
        title : Text ("Choose the kind of Workout" ,
        style: TextStyle(
          color: Colors.grey[200],
          fontSize: 22,
          fontWeight:FontWeight.bold

        ),)
      ),
      body:

        Container(
          margin: EdgeInsets.fromLTRB(5, 30, 5, 10),
          child: GridView.count(

            childAspectRatio: 0.8,
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0 ,
            children: <Widget>[
              myButton("Push Workouts"),
              myButton("Pull Workouts"),
              myButton("Leg Workouts"),
              myButton("Calisthenics")
            ],),
        ),
      )

    ;
  }
}
