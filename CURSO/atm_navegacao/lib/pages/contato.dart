import 'package:flutter/material.dart';

class Contato extends StatefulWidget {
  @override
  _ContatoState createState() => _ContatoState();
}

class _ContatoState extends State<Contato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contato"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Image.asset("images/detalhe_contato.png")
                  ),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      "Fale Conosco",
                      style: TextStyle( fontSize: 26, fontWeight: FontWeight.bold, color: Colors.teal[900] ),
                    )
                  )
                ],
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(6),
                      child: Text("E-mail: atmConsultoria@atm.com.br", style: TextStyle( fontSize: 22  ) )
                    ),
                    Padding(
                      padding: EdgeInsets.all(6),
                      child: Text("Wathsapp: (42) 00772-5656 ", style: TextStyle( fontSize: 22  ) )
                    ),
                    Padding(
                      padding: EdgeInsets.all(6),
                      child: Text("Telefone:. (42) 0043-9812", style: TextStyle( fontSize: 22  ) )
                    ),
                  ],
                ),
              ),

            ],
          )
        ),
      )
    );
  }
}