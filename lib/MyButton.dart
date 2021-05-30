import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myButton extends StatelessWidget {
  String S ;
  myButton(String S ){
    this.S = S ;
  }
  @override
  Widget build(BuildContext context) {
    return Container (
        child:
        ElevatedButton(onPressed: () {
           String s = '/' + this.S ;
           print(s);
           Navigator.pushNamed(context, s);

        }  ,
            style : ButtonStyle (
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue[800]),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(35.0)),
            ) ,
            child: Text ("$S" ,
              style: TextStyle(
                color: Colors.grey[300] ,
                fontSize: 20,
                letterSpacing: 1.3 ,
              ),
                textAlign: TextAlign.center
              ,)
        )
    );
  }
}
