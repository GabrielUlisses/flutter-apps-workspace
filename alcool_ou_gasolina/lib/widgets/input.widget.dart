import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class Input extends StatelessWidget {
  var label = "";
  var control = new MoneyMaskedTextController();

  Input({
    @required this.label,
    @required this.control,
  });


  @override
  Widget build(BuildContext context) {
    
    return Row(
      children: <Widget>[
        Container(
          width: 150,
          child: Center(
            child: Text(
              label, 
              style: TextStyle( color: Colors.white, fontSize: 40, fontFamily: "Big Shoulders Display", ),
            ),
          )         
        ),       
        Expanded(
          child: TextFormField(
            controller: control,
            keyboardType: TextInputType.number,
            style: TextStyle( color: Colors.white, fontSize: 40, fontFamily: "Big Shoulders Display", ),
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          )
        )
      ],
    );
  }
}