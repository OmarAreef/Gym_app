
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MyButton.dart' ;

class setRow extends StatefulWidget {
  int number ;
  int _reps ;

  int get reps => _reps;

  set rep(int reps) {
    _reps = reps;
  }
  int _weight ;

  int get weight => _weight;

  set weight(int weight) {
    _weight = weight;
  }

  setRow (int Number) {
    this.number= Number ;
  }

  @override
  _setRowState createState() => _setRowState(this.reps , this.weight );
}

class _setRowState extends State<setRow> {
  int reps ;
  int weight ;
  _setRowState(int reps, int weight)
  {
    this.reps = reps ;
    this.weight = weight ;
  }







  @override
  Widget build(BuildContext context) {


    return  Row (
        children:<Widget> [
          SizedBox(width: 40,
          child: Text(
            ("Set "+ widget.number.toString()),
            style: TextStyle (
              fontSize:  18,
              fontWeight: FontWeight.bold,
              color: Colors.grey[200]
            ),
          ),),
          SizedBox(width: 20,),
          Flexible(child: TextField(

            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blue[800],width: 8)
                ),
                hintStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[200]

                ),

                hintText: 'Reps'
            ),
            onChanged: (String S){
              setState(() {
                reps = int.parse(S);
              });

            },
          ) ),
          SizedBox(width: 20,),
          Flexible(child: TextField(
            onChanged: (String S){
              setState(() {
                weight = int.parse(S);
              });

            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue[800],width: 8)
                ),
                hintStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                    color: Colors.grey[200]

                ),
                hintText: 'Weight'
            ),
          )
          ),
          SizedBox(width: 10,),
        ],
      );


  }
}
