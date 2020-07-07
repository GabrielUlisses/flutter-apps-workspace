import 'dart:ui';

import 'package:atm_navegacao/widgets/container_servico.widget.dart';
import 'package:flutter/material.dart';

class Servico extends StatefulWidget {
  @override
  _ServicoState createState() => _ServicoState();
}

class _ServicoState extends State<Servico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Serviços"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left:20, top:20, right:10),
                    child: Image.asset("images/detalhe_servico.png")
                  ),
                  Text(
                    "Nossos Serviços",
                    style: TextStyle( color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold )
                  )
                ],                                
              ),
              ContainerServico(
                texto: "Consultoria",
                cor1: Colors.purpleAccent,
                cor2: Colors.blue,
              ),
              ContainerServico(
                texto: "Preços",
                cor1: Colors.purple,
                cor2: Colors.blue,
              ),
              ContainerServico(
                texto: "Acompanhamento de Projetos",
                cor1: Colors.purpleAccent,
                cor2: Colors.blue,
              )
            ], 
          )
        ),
      )
    );
  }
}