
import 'package:flutter/material.dart';

class Cliente extends StatefulWidget {
  String opcional = "";

  Cliente({this.opcional});

  @override
  _ClienteState createState() => _ClienteState();
}

class _ClienteState extends State<Cliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clientes ${widget.opcional}"),
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
                    child: Image.asset("images/detalhe_cliente.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      "Nossos Clientes",
                      style: TextStyle( fontSize: 26, fontWeight: FontWeight.bold, color: Colors.lime[700] ),
                    )
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top:16),
                child: Image.asset("images/cliente1.png"),
              ),
              Text("Serviços de Software", style: TextStyle( fontSize: 22, fontWeight: FontWeight.bold )  ),
              Padding(
                padding: EdgeInsets.only(top:16),
                child: Image.asset("images/cliente2.png"),
              ),
              Text("Serviços de Auditoria", style: TextStyle( fontSize: 22, fontWeight: FontWeight.bold )  ),
            ],
          )
        ),
      )
    );
  }
}