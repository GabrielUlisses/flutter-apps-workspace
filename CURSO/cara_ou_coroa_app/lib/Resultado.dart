import 'package:flutter/material.dart';

import 'Home.dart';

class Resultado extends StatefulWidget {

  Image _face;

  Resultado(this._face);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Color(0xff61bd86),     
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(12),
              child: widget._face,
            ),
            GestureDetector(
              child: Image.asset("images/botao_voltar.png"),
              onTap: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => Home()
                  )
                );
              }
            )
          ],
        )
      ),
    );
  }
}