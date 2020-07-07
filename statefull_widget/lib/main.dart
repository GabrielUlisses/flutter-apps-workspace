

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Titulo")),
        body: Body(),//Counter(),
      ), 
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //Counter(),
        DayPhrase(),
      ],
    );
  }
}

class DayPhrase extends StatefulWidget {
  @override
  _DayPhraseState createState() => _DayPhraseState();
}

class _DayPhraseState extends State<DayPhrase> {

  var txt_controller = new TextEditingController();

  var titulo = "Insira uma nova frase";
  var frase = "Nenhuma inserida";
  //int contagem = 0;
  int indice = 0;
  List frases = [];

  void _setFrase(){
    setState(() {
      indice = Random().nextInt(frases.length);
      frase = frases[indice];
      print(indice);
      print(frase);
      print(frases.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Column(
        children: <Widget>[
          Text(titulo, style: TextStyle( fontSize: 30, fontWeight: FontWeight.bold),),
          SizedBox(height:20),
          Text("Frase do Dia: " + frase, style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold),),
          TextField( 
            controller: txt_controller,
            style: TextStyle( fontSize: 20),
          ),
          SizedBox(height: 10,),
          FlatButton(
            padding: EdgeInsets.all(10),
            color: Colors.lightBlue,
            child: Text("Adicionar Frase", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
            onPressed: (){
              setState(() {
                this.frase = txt_controller.text;
                this.frases.add(txt_controller.text);
                this.txt_controller.text = "";
              });
            },
          ),
          FlatButton(
            padding: EdgeInsets.all(10),
            color: Colors.lightBlue,
            child: Text("Setar frase aleatória", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
            onPressed: (){
             _setFrase();
            },
          )
        ],
      ),
    );
  }
}



class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  var clicks = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 30,
        ),
        Container(
          width: double.infinity,
          child: Text("You have clicked $clicks times.", style: TextStyle(fontSize: 24), textAlign: TextAlign.center,),
        ),
        Wrap(
          alignment: WrapAlignment.start,
          direction: Axis.horizontal,
          children: <Widget>[
            FlatButton(           
              child: Text("Clear", style: TextStyle(color: Colors.white, fontSize: 20),),
              color: Colors.lightBlue,        
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),  
              onPressed: (){
                setState(() {
                  clicks = 0;
                });
              },
            ),
            SizedBox(width: 5),
            FlatButton(
              child: Text("Click", style: TextStyle(color: Colors.white, fontSize: 20),),
              color: Colors.lightBlue,        
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),  
              onPressed: (){
                setState(() {
                  clicks = clicks + 1;
                });
              },
              onLongPress: (){
                setState(() {
                  clicks = clicks + 2;
                });
              },
            ),
          ],
        )
      ],
    );
  }
}