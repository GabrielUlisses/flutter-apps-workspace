import 'package:flutter/material.dart';

class ContainerServico extends StatelessWidget {
  var texto = "";
  var cor1;
  var cor2;

  ContainerServico({ 
      @required this.texto,
      @required this.cor1,
      @required this.cor2,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only( right:20, left:20, top:20 ),
      child: Container(                  
        width: double.infinity,                  
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Text(texto, style: TextStyle( fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white ) ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          gradient: LinearGradient(colors: [ cor1, cor2 ])
        ),
      ),
    );
  }
}