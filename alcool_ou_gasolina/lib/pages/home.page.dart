import 'package:alcool_ou_gasolina/widgets/loading-button.widget.dart';
import 'package:alcool_ou_gasolina/widgets/logo.widget.dart';
import 'package:alcool_ou_gasolina/widgets/submit-form.dart';
import 'package:alcool_ou_gasolina/widgets/success.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color color = Colors.deepPurple;
  var _gasControl = new MoneyMaskedTextController();
  var _alcControl = new MoneyMaskedTextController();
  var _busy = false;
  var _completed = false;
  var _result = "Compensa utilizar ";

  @override
  Widget build(BuildContext context) {
    return (
      Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: AnimatedContainer(
          duration: Duration(milliseconds: 1200),
          color: color,
          child: ListView(
            children: <Widget>[
              Logo(),
              _completed 
              ? SuccessWidget(
                result: _result,
                 reset: reset
              )
              : SubmitForm(
                gasControl: _gasControl, 
                alcControl: _alcControl, 
                busy: _busy, 
                submitFunc: calculate
              ),
            ],
          )
        )
      )
    );
  }

  Future calculate(){
    print("calculate");
    double alcool = double.parse(_alcControl.text.replaceAll(new RegExp(r'[,.]'), ''))/ 100;
    double gasolina = double.parse(_gasControl.text.replaceAll(new RegExp(r'[,.]'), ''))/100;
    double res = alcool / gasolina;
    print(res);

    setState((){
      color = Colors.purpleAccent;
      _busy = true;
      _completed = false;
    });

    return new Future.delayed(
      const Duration(seconds: 2),
      () => {
        setState((){
          print("new state");
          if (res >= 0.7){
            _result = "Compensa usar Gasolina!";
          }else{
            _result = "Compensa usar Álcool";
          }

          _busy = false;
          _completed = true;
        })
      }
    );
  }

  reset(){
    setState(() {
      _gasControl = new MoneyMaskedTextController();
      _alcControl = new MoneyMaskedTextController();
      _busy = false;
      _completed = false;
      color = Colors.deepPurple;
    });
  }
}
