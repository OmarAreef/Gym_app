import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'myButton1.dart';
class Push extends StatefulWidget {
  @override
  _PushState createState() => _PushState();
}

class _PushState extends State<Push> {
  List<String> workouts = ["Chest press",
    "Chest flies" , "Overhead presses" , "Lateral raises"] ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar (
          centerTitle: true ,
          backgroundColor: Colors.grey[900],
          title : Text ("Choose your Workout" ,
            style: TextStyle(
                color: Colors.grey[300],
                fontSize: 24,
                fontWeight:FontWeight.bold

            ),)
      ),
      body:

      Container(
        margin: EdgeInsets.fromLTRB(8, 30, 8, 10),
        child: GridView.count(
          childAspectRatio: 0.8,
          crossAxisCount: 2,
          crossAxisSpacing: 18.0,
          mainAxisSpacing: 16.0 ,
          children: workouts.map((workout) {
            return myButton1(workout); }).toList(),
      ),
    )
    );
  }
}
