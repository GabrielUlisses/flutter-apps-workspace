
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _txtControl = new TextEditingController();
  String _cep = "";
  String _url = "https://viacep.com.br/ws/";

  _recuperarCEP(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Web Services")
      ),
      body: Container(
        width: double.infinity,
        height: 200,
        margin: EdgeInsets.all(32),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.lightGreen[100],
          borderRadius: BorderRadius.circular(12)
        ),       
        child: Column(
          children: <Widget>[
            TextField(
              controller: _txtControl,
              cursorColor: Colors.black,
              keyboardType: TextInputType.number,
              maxLength: 8,
              maxLengthEnforced: true,
              decoration: InputDecoration(
                labelText: "Insira um CEP",               
              ),
              style: TextStyle(
                color: Colors.green,
                fontSize: 26,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              padding: EdgeInsets.all(8),
              color: Colors.green,
              child: Text( "BUSCAR CEP", style: TextStyle( fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white ) ),
              onPressed: (){
                _recuperarCEP();
              },
            ),
          ],
        ),
      ),
    );
  }
}