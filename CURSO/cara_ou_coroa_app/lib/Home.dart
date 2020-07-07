import 'dart:math';

import 'package:flutter/material.dart';

import 'Resultado.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Image _jogar(){
    var face = Random().nextInt(2) == 1 ? "cara" : "coroa";
    if(face == "cara"){
      return Image.asset("images/moeda_cara.png");
    }
    return Image.asset("images/moeda_coroa.png");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff61bd86),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Image.asset("images/logo.png"),
              ),
              GestureDetector(
                child: Image.asset("images/botao_jogar.png"),
                onTap: (){
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context)=> Resultado(_jogar())
                    )
                  );
                },
              ),
            ],
          )
        )
      ),
    );
  }
}