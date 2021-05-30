import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myButton1 extends StatelessWidget {
  String S ;
  myButton1(String S ){
    this.S = S ;
  }
  @override
  Widget build(BuildContext context) {
    return Container (
        child:
        ElevatedButton( onPressed: () {

          Navigator.pushNamed(context, '/Exercise');
        }  ,
            style : ButtonStyle (
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue[800]),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(35.0)),
            ) ,
            child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.fitness_center ,
                    color: Colors.grey[900],
                    size: 55),
                    SizedBox(height: 30,)
                    ,

                    Text ("$S" ,
              style: TextStyle(
                    color: Colors.grey[200] ,
                    fontSize: 19,
                    letterSpacing: 1.4 ,
              ),
              textAlign: TextAlign.center ,
            ),
                  ],
                )

        )

    );
  }
}
