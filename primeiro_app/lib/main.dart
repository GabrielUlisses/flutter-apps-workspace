import 'package:flutter/material.dart';
import 'models/Tarefa.dart';


void main() {
  runApp(new ListaDeTarefasApp());
}

class ListaDeTarefasApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'List App',
      home: new ListaScreen()
    );
  }  
}

class ListaScreen extends StatefulWidget{
  
  @override
  State<StatefulWidget> createState(){
    return new ListaScreenState();
  }
}

class ListaScreenState extends State<ListaScreen>{

  TextEditingController textController = new TextEditingController();
  List<Tarefa> tarefas = new List<Tarefa>();

  void adicionaTarefa(String nomeTarefa){
    setState(() {
      Tarefa tarefa = new Tarefa(nomeTarefa);
      tarefas.add(tarefa);
    });       

    textController.clear();
  }

  Widget getItem(Tarefa tarefa){
    return (
      new Row(
        children: <Widget>[
          new IconButton(
            icon: new Icon(
              tarefa.concluida ? Icons.check_box : Icons.check_box_outline_blank, 
              color: tarefa.concluida ? Colors.green : Colors.black,
              size: 44,
              ),  
            padding: EdgeInsets.only(left: 10, right:30),                               
            onPressed: () {              
              setState(() {
                tarefa.concluirTarefa();
              });                           
            },
          ),
          new Column( 
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(tarefa.nome, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Text(tarefa.data.day.toString() + "/"+ tarefa.data.month.toString() +"/"+ tarefa.data.year.toString())
            ]
          ,)
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: Text("Hello World!")),
      body: Column(
        children: <Widget>[                
          Container(
            padding: EdgeInsets.all(0.0),
            child: TextField(
              controller: textController,
              //onSubmited: (value) => adicionaTarefa(value);
              //onSubmited: adicionaTarefa;
              onSubmitted: (value){
                this.adicionaTarefa(value);
              },
            )
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tarefas.length,
              itemBuilder: (_, indice){
                return getItem(tarefas[indice]);
              },
            )       
          )
        ],
      ),
    );
  }
}
