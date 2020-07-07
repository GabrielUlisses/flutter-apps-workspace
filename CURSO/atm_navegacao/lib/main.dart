import 'package:flutter/material.dart';

import 'pages/cliente.dart';
import 'pages/contato.dart';
import 'pages/empresa.dart';
import 'pages/servicos.dart';

void main(){
  runApp(
    MaterialApp(
      home: Home(),
    )
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _paginaCliente(){
    Navigator.push(
      context, MaterialPageRoute( builder: (context) => Cliente( opcional: "da Empresa",) )
    );
  }

  void _paginaServico(){
    Navigator.push(
      context, MaterialPageRoute( builder: (context)=> Servico() )
    );
  }

  void _paginaContato(){
    Navigator.push(
      context, MaterialPageRoute( builder: (context)=> Contato() )
    );
  }

  void _paginaEmpresa(){
    Navigator.push(
      context, MaterialPageRoute( builder: (context)=> Empresa() )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ATM Consultoria"),
        backgroundColor: Colors.purple,       
      ),     
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Padding(
              padding: EdgeInsets.only(top:32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    child: Image.asset("images/menu_empresa.png"),
                    onTap: (){ _paginaEmpresa(); },
                  ),
                  GestureDetector(
                    child: Image.asset("images/menu_servico.png"),
                    onTap: (){ _paginaServico(); },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    child: Image.asset("images/menu_cliente.png"),
                    onTap: (){ _paginaCliente(); },
                  ),
                  GestureDetector(
                    child: Image.asset("images/menu_contato.png"),
                    onTap: (){ _paginaContato(); },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}