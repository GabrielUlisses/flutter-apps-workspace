import 'dart:math';

import 'package:flutter/material.dart';

class Jokenpo extends StatefulWidget {
  @override
  _JokenpoState createState() => _JokenpoState();
}

class _JokenpoState extends State<Jokenpo> {

  String _defaultMessage = "";

  var _defaultColor = Colors.black;

  Image _defaultAppChoice = Image.asset("images/padrao.png", width: 130, height: 130,);

  List _choices = [
    "Pedra",
    "Papel",
    "Tesoura",
  ];

  List getChoice(){
    var _choice = _choices[Random().nextInt(_choices.length)];
    var _image = _choice == "Pedra" ? Image.asset("images/pedra.png") :
                 _choice == "Papel" ? Image.asset("images/papel.png") :
                 Image.asset("images/tesoura.png");
    return [_choice, _image];
  }

  List getWinner(String userChoice){
    List _appChoice = getChoice();
    var _winner = userChoice == _appChoice[0] ? "Empate" :
                  userChoice == "Pedra" && _appChoice[0] == "Papel" ? "app" :
                  userChoice == "Pedra" && _appChoice[0] == "Tesoura" ? "player" :
                  userChoice == "Papel" && _appChoice[0] == "Tesoura" ? "app" :
                  userChoice == "Papel" && _appChoice[0] == "Pedra" ? "player" :
                  userChoice == "Tesoura" && _appChoice[0] == "Pedra" ? "app" :
                  userChoice == "Tesoura" && _appChoice[0] == "Papel" ? "player": "Indefinido...";

    List _resultado = _winner == "app" ? [Colors.red, "Você perdeu.."] : _winner == "player" ? [Colors.green, "Você venceu!!!"] : [Colors.blue, "Game empatado."] ;

    return [_resultado[1], _resultado[0], _appChoice[1]];

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JokenPo"),
      ),
      body: Column(       
        children: <Widget>[ 
          Padding(
            padding: EdgeInsets.all(15),
            child: Text("Escolha do app", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold ),),
          ),                
          _defaultAppChoice,
          Padding(
            padding: EdgeInsets.only(top:30, bottom:10),
            child: Text(_defaultMessage, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: _defaultColor ),),
          ),          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                child: Image.asset("images/pedra.png", width: 90, height: 90,),
                onTap: (){
                  setState(() {
                    this._defaultAppChoice = Image.asset("images/load.gif", width: 90, height: 90, );
                  });
                  new Future.delayed(Duration(seconds: 1), () {
                    setState(() {                   
                      var ret = getWinner("Pedra"); 
                      this._defaultMessage = ret[0];
                      this._defaultColor = ret[1];
                      this._defaultAppChoice = ret[2];
                    });    
                  });                              
                },                
              ),
              GestureDetector(
                child: Image.asset("images/papel.png", width: 90, height: 90,),
                onTap: (){
                  setState(() {
                    this._defaultAppChoice = Image.asset("images/load.gif", width: 90, height: 90, );
                  });
                  new Future.delayed(Duration(seconds: 1), () {
                    setState(() {                   
                      var ret = getWinner("Papel"); 
                      this._defaultMessage = ret[0];
                      this._defaultColor = ret[1];
                      this._defaultAppChoice = ret[2];
                    });    
                  });
                },                
              ),
              GestureDetector(
                child: Image.asset("images/tesoura.png", width: 90, height: 90,),
                onTap: (){
                  setState(() {
                    this._defaultAppChoice = Image.asset("images/load.gif", width: 90, height: 90, );
                  });
                  new Future.delayed(Duration(seconds: 1), () {
                    setState(() {                   
                      var ret = getWinner("Tesoura"); 
                      this._defaultMessage = ret[0];
                      this._defaultColor = ret[1];
                      this._defaultAppChoice = ret[2];
                    });    
                  });
                },                
              ),             
            ],
          )    
        ],
      ),
    );
  }
}