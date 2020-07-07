import 'package:flutter/material.dart';

class Empresa extends StatefulWidget {
  @override
  _EmpresaState createState() => _EmpresaState();
}

class _EmpresaState extends State<Empresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Empresa"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left:20, right:20, top:10),
                    child: Image.asset("images/detalhe_empresa.png"),
                  ),                 
                  Text(
                    "Sobre a empresa", 
                    style: TextStyle( color: Colors.orange, fontSize: 24 ),
                  ),
                ],              
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Text(
                  """
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean viverra elit at urna pharetra, sed ultrices nunc posuere. Maecenas vulputate nisl a diam commodo blandit. Donec id augue hendrerit, convallis mauris et, cursus nisl. Pellentesque mi nibh, imperdiet vel faucibus id, tristique quis urna. Aliquam dolor lectus, vehicula et dui et, dapibus dictum ex. Sed et nisl metus. Ut feugiat tempor sem, eleifend finibus tortor gravida at. Proin tristique turpis sit amet dolor rhoncus, sit amet venenatis nisl pellentesque. Praesent elementum tortor sit amet turpis varius iaculis sit amet quis velit. Ut porttitor ex a nisl feugiat, eu congue neque ultrices. Phasellus nec ipsum et dui ultricies bibendum. Donec venenatis ultricies scelerisque. Etiam volutpat lorem id urna posuere tristique. Duis a mi augue. Nunc aliquam ligula ac faucibus vehicula.
In sodales congue nulla, nec cursus nulla consequat iaculis. Duis nisl diam, maximus vitae fermentum sit amet, tempor ullamcorper est. Vivamus at sagittis neque. Maecenas laoreet tristique rhoncus. Aliquam erat volutpat. Sed molestie magna eget tellus tempus aliquet. Aliquam erat volutpat. 

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean viverra elit at urna pharetra, sed ultrices nunc posuere. Maecenas vulputate nisl a diam commodo blandit. Donec id augue hendrerit, convallis mauris et, cursus nisl. Pellentesque mi nibh, imperdiet vel faucibus id, tristique quis urna. Aliquam dolor lectus, vehicula et dui et, dapibus dictum ex. Sed et nisl metus. Ut feugiat tempor sem, eleifend finibus tortor gravida at. Proin tristique turpis sit amet dolor rhoncus, sit amet venenatis nisl pellentesque. Praesent elementum tortor sit amet turpis varius iaculis sit amet quis velit. Ut porttitor ex a nisl feugiat, eu congue neque ultrices. Phasellus nec ipsum et dui ultricies bibendum. Donec venenatis ultricies scelerisque. Etiam volutpat lorem id urna posuere tristique. Duis a mi augue. Nunc aliquam ligula ac faucibus vehicula.
In sodales congue nulla, nec cursus nulla consequat iaculis. Duis nisl diam, maximus vitae fermentum sit amet, tempor ullamcorper est. Vivamus at sagittis neque. Maecenas laoreet tristique rhoncus. Aliquam erat volutpat. Sed molestie magna eget tellus tempus aliquet. Aliquam erat volutpat. 

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean viverra elit at urna pharetra, sed ultrices nunc posuere. Maecenas vulputate nisl a diam commodo blandit. Donec id augue hendrerit, convallis mauris et, cursus nisl. Pellentesque mi nibh, imperdiet vel faucibus id, tristique quis urna. Aliquam dolor lectus, vehicula et dui et, dapibus dictum ex. Sed et nisl metus. Ut feugiat tempor sem, eleifend finibus tortor gravida at. Proin tristique turpis sit amet dolor rhoncus, sit amet venenatis nisl pellentesque. Praesent elementum tortor sit amet turpis varius iaculis sit amet quis velit. Ut porttitor ex a nisl feugiat, eu congue neque ultrices. Phasellus nec ipsum et dui ultricies bibendum. Donec venenatis ultricies scelerisque. Etiam volutpat lorem id urna posuere tristique. Duis a mi augue. Nunc aliquam ligula ac faucibus vehicula.
In sodales congue nulla, nec cursus nulla consequat iaculis. Duis nisl diam, maximus vitae fermentum sit amet, tempor ullamcorper est. Vivamus at sagittis neque. Maecenas laoreet tristique rhoncus. Aliquam erat volutpat. Sed molestie magna eget tellus tempus aliquet. Aliquam erat volutpat. 

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean viverra elit at urna pharetra, sed ultrices nunc posuere. Maecenas vulputate nisl a diam commodo blandit. Donec id augue hendrerit, convallis mauris et, cursus nisl. Pellentesque mi nibh, imperdiet vel faucibus id, tristique quis urna. Aliquam dolor lectus, vehicula et dui et, dapibus dictum ex. Sed et nisl metus. Ut feugiat tempor sem, eleifend finibus tortor gravida at. Proin tristique turpis sit amet dolor rhoncus, sit amet venenatis nisl pellentesque. Praesent elementum tortor sit amet turpis varius iaculis sit amet quis velit. Ut porttitor ex a nisl feugiat, eu congue neque ultrices. Phasellus nec ipsum et dui ultricies bibendum. Donec venenatis ultricies scelerisque. Etiam volutpat lorem id urna posuere tristique. Duis a mi augue. Nunc aliquam ligula ac faucibus vehicula.
In sodales congue nulla, nec cursus nulla consequat iaculis. Duis nisl diam, maximus vitae fermentum sit amet, tempor ullamcorper est. Vivamus at sagittis neque. Maecenas laoreet tristique rhoncus. Aliquam erat volutpat. Sed molestie magna eget tellus tempus aliquet. Aliquam erat volutpat. 
                  """
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}