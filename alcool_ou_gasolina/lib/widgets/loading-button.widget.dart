import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  var busy = false;
  var invert = false;
  Function func;
  var text;

  LoadingButton({
    @required this.busy,
    @required this.invert,
    @required this.func,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return   
    busy ? Container(
      alignment: Alignment.center,
      height: 60,
      child: CircularProgressIndicator(
        backgroundColor: Colors.white,
      )
    )
    :
    Container(
      alignment: Alignment.center,
      height: 60,
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
          color: invert == false ? Colors.white : Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(50)),
      child: FlatButton(
        child: Text(
          text,
          style: TextStyle(
              color: invert == false ? Theme.of(context).primaryColor : Colors.white,
              fontSize: 34,
              fontFamily: "Big Shoulders Display",
              fontWeight: FontWeight.bold
          ),
          textAlign: TextAlign.center,
        ),
        onPressed: func,
      ),
    );
  }
}
