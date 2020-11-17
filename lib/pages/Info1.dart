import 'package:flutter/material.dart';

class Info1 extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Informações', textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
        ),
        backgroundColor: Colors.blue[800],
        body: Column(
            children: <Widget>[
              Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Critérios de força da senha são os seguintes: \n° Mínimo de 10 caracteres \n"
                            "° Letras maiúsculas\n"
                            "° Caráter Especial (!@#&*)\n"
                            "° Numerais (0-9)\n"
                            "° Letras minúsculas\n",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],),]),

            );



  }

}