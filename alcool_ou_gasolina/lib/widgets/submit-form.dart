import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'input.widget.dart';
import 'loading-button.widget.dart';

class SubmitForm extends StatelessWidget {
  var gasControl = new MoneyMaskedTextController();
  var alcControl = new MoneyMaskedTextController();
  var busy = false;
  Function submitFunc;

  SubmitForm({
    @required this.gasControl,
    @required this.alcControl,
    @required this.busy,
    @required this.submitFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,             
          ),
          child: Input(label: "Gasolina", control: gasControl ,), 
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,             
          ),
          child: Input(label: "Álcool", control: alcControl ,), 
        ),
        SizedBox(
          height: 20,
        ),
        LoadingButton(
              busy: busy, 
              invert: false, 
              func: submitFunc, 
              text: "Calcular"
            ),
      ],
    );
  }
}