import 'package:flutter/material.dart';

void main() {
    runApp(new WidgetStateful());
    //runApp(MeuWidget);
}

class WidgetStateful extends StatefulWidget{
  @override 
  ApplicationState createState(){
      return new ApplicationState();
  }
}

class ApplicationState extends State<WidgetStateful>{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'Título',
      home: new Scaffold(
        appBar: new AppBar(title: Text("HI THERE", textAlign: TextAlign.center), backgroundColor: Colors.black),
        ),
    );
  }
}

class MeuWidget extends StatelessWidget{
    @override
    Widget build(BuildContext context){
        return new MaterialApp(         
          title: "Hello World!!!",
          home: new Scaffold(
            body: new Container(
              color: Colors.blueGrey,
              child: new Container(
                color: Colors.yellow,
                margin: EdgeInsets.all(60),
              )
            )
          )
        );
    }
} 