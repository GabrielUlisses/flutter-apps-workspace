class Tarefa{
  String nome;
  DateTime data;
  bool concluida;

  Tarefa(String nome){
    this.nome = nome;
    this.data = DateTime.now();
    this.concluida = false;
  }

  concluirTarefa(){
    this.concluida = true;
  }
}

