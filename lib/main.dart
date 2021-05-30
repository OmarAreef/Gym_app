



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_app_2/Exercise.dart';
import 'package:gym_app_2/Push.dart';
import 'package:gym_app_2/SetRow.dart';
import 'Home.dart';
import 'NewWorkOut.dart';
import 'Pull.dart';


void main() {
  runApp(MaterialApp(
    home: Home(),
    routes: {

      '/New Workout' : (context) => NewWorkout(),
      '/Push Workouts' : (context) => Push(),
      '/Pull Workouts' : (context) => Pull(),
      '/Exercise' : (context) => Exercise() ,
    },
  ));
}



