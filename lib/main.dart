import 'package:flutter/material.dart';
import 'package:sidebar_animation/pages/Info1.dart';
import './component/sign_in_form.dart';

import 'package:flutter_bloc/flutter_bloc.dart';


void main() => runApp(Testesenha());


class Testesenha extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Verificador de Senha",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue[900],
      ),
      home: MyHomePage(title: 'Verificador de Senha'),
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
        title: Text('Verificador de Senha',textScaleFactor: 1.2, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
        leading: GestureDetector(
          onTap: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Info1()));},
          child: Icon(
            Icons.info_outline,
            size: 36.0,
            color: Colors.white,

          ),
        ),

      ),
      body: Center(
          child: SignInForm()
      ),
    );
  }
}




