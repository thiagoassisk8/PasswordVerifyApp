import 'package:flutter/material.dart';
import 'package:sidebar_animation/pages/OIoT.dart';
import 'package:sidebar_animation/pages/TelaInfo.dart';





void main() => runApp(Testesenha());


class Testesenha extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Verificador de Senha",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue[900],
      ),
      home: MyHomePage(title: 'Informações'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text('Informações', textScaleFactor: 1.2,
    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
    centerTitle: true,
    backgroundColor: Colors.blue[800],

    ),
    backgroundColor: Colors.white,

      body: Center(
          child: Telainf()
      ),
    );
  }
}

