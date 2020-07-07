import 'package:flutter/material.dart';

class MyColorButton extends StatelessWidget {
  var bg_color;
  var lb_text;
  var acao;

  MyColorButton({
    @required this.bg_color,
    @required this.lb_text,
    @required this.acao,
  });

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(5),
      color: bg_color,
      child: Text(lb_text, style: TextStyle(fontSize: 14, color: Colors.white),),
      onPressed: acao
    );
  }
}