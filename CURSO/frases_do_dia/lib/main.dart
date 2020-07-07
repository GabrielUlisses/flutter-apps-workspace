
import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(
    MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    )
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "Frase 01",
    "Frase 02",
    "Frase 03",
    "Frase 04",
    "Frase 05",
  ];

  var _frase = "Clique aqui para gerar uma nova frase";

  String gerar_frase(){
    return this._frases[Random().nextInt( _frases.length )];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all( width:5, color: Colors.amber ),
          borderRadius: BorderRadius.circular(5)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Text(
              _frase,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 24,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold
              ),
            ),
            RaisedButton(
              color: Colors.green,
              child: Text(
                "Nova Frase",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              onPressed: (){
                setState(() {
                  this._frase = gerar_frase();
                });
              },
            )
          ],
        ),
      ),
      ),
    );
  }
}


/*
    MaterialApp(
      title: "App",
      home: Column(
        children: <Widget>[
          Container(
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.purple,
              gradient: LinearGradient(
                colors: [Colors.purpleAccent, Colors.purple[600]]
              )
            ),
            child: FlutterLogo(
              size: 200,
            )
          ),
          Container(
            margin: EdgeInsets.only(top:20),
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
              gradient: LinearGradient(
                colors: [Colors.lightBlue, Colors.blue[600]]
              )
            ),
            child: FlutterLogo(
              size:200,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:20),
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
              gradient: LinearGradient(
                colors: [Colors.lightGreen, Colors.green[600]]
              )
            ),
            child: FlutterLogo(
              size:200,
            ),
          )
        ],
      ),
    )*/