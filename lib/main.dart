import 'package:flutter/material.dart';
import 'dart:math';

void main() {
 return runApp(
   MaterialApp(
     home: Scaffold(
       backgroundColor: Colors.red,
       appBar: AppBar(
         backgroundColor: Colors.red,
           title: Text('Dicee'),
       ),
       body: DicePage(),
     ),
   ),
 );
}

/*
class DicePage extends StatelessWidget {
  // This widget is the root of your application.
  var numeroDadoIzquierdo = 1;
  var number1, number2, r,min = 1, max =  6;
  Random rnd;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
            Expanded(
              child: FlatButton(child: Image.asset('images/dice1.png'),
                onPressed: (){

                },
              ),
            ),

              Expanded(
                child: FlatButton(
                    child: Image.asset('images/dice2.png'),
                    onPressed: (){

                    },
                ),
            ),
          ],
        ),
    );
  }
}
*/

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var numeroDadoIzquierdo = 1;
  var numeroDadoDerecho = 1;
  var number1, number2, r,min = 1, max =  6;
  Random rnd;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  //numeroDadoIzquierdo = numeroDadoIzquierdo + 1;
                  rnd = new Random();
                  numeroDadoIzquierdo = min + rnd.nextInt(max - min);

                  if(numeroDadoIzquierdo == 7){
                    numeroDadoIzquierdo = 1;
                  }
                });
              },
              child: Image.asset('images/dice$numeroDadoIzquierdo.png'),
            ),
          ),

          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  rnd = new Random();
                  numeroDadoDerecho = min + rnd.nextInt(max - min);
                });
              },
              child: Image.asset('images/dice$numeroDadoDerecho.png'),
            ),
          ),
        ],
      ),
    );
  }
}

