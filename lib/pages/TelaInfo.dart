import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'package:sidebar_animation/pages/ComoEvitar.dart';
import 'package:sidebar_animation/pages/InfoRede.dart';
import 'package:sidebar_animation/pages/InfoSenha.dart';
import 'package:sidebar_animation/pages/OIoT.dart';
import 'package:sidebar_animation/pages/Problemas.dart';
import 'package:sidebar_animation/pages/Testesenha.dart';

class Telainf extends StatefulWidget {
    @override
    _Tela createState() => _Tela();
    }
    class _Tela extends State<Telainf> {
          final _formKey = GlobalKey<FormState>();
          Widget build(BuildContext context) {
            return Column(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Info1()));
                      },
                      color: Colors.blue[900],
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(30, 15, 30, 15
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'O que é IoT',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.info_outline,
                              color: Colors.white,
                            ),
                          ],),),),),
                  Divider(height: 0,
                    thickness: 1,
                    color: Colors.white.withOpacity(0.8),
                    indent: 0,
                    endIndent: 0,),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InfoSenha()));
                      },
                      color: Colors.blue[900],
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(30, 15, 30, 15
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Informações sobre Senhas',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.info_outline,
                              color: Colors.white,
                            ),
                          ],),),),),
                  Divider(height: 0,
                    thickness: 1,
                    color: Colors.white.withOpacity(0.8),
                    indent: 0,
                    endIndent: 0,),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InfoRede()));
                      },
                      color: Colors.blue[900],
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(30, 15, 30, 15
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Segurança de Redes',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.info_outline,
                              color: Colors.white,
                            ),
                          ],),),),),
                  Divider(height: 0,
                    thickness: 1,
                    color: Colors.white.withOpacity(0.8),
                    indent: 0,
                    endIndent: 0,),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Problemas()));
                      },
                      color: Colors.blue[900],
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(30, 15, 30, 15
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Problemas de Segurança',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.info_outline,
                              color: Colors.white,
                            ),
                          ],),),),),
                  Divider(height: 0,
                    thickness: 1,
                    color: Colors.white.withOpacity(0.8),
                    indent: 0,
                    endIndent: 0,),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ComoEvitar()));
                      },
                      color: Colors.blue[900],
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(30, 15, 30, 15
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Como evitar',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.info_outline,
                              color: Colors.white,
                            ),
                          ],),),),),
                  Divider(height: 0, thickness: 1, color: Colors.white.withOpacity(0.8), indent: 0, endIndent: 0,),
            Expanded(
              child: FlatButton(
                onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Validador()));},
                color: Colors.blue[900],
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 15, 30, 15
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Verificador de Senha',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,),),
                      Icon(
                        Icons.info_outline,
                        color: Colors.white,
                      ),],),),),),
                  /* Divider(height: 0, thickness: 1, color: Colors.white.withOpacity(0.8), indent: 0, endIndent: 0,),
            Expanded(
              child: FlatButton(
                onPressed: () {},
                color: Colors.blue[800],
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 15, 30, 15
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Memorial Jk',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.alt_route_outlined,
                        color: Colors.white,
                      ),],),),),),
            Divider(height: 0, thickness: 1, color: Colors.white.withOpacity(0.8), indent: 0, endIndent: 0,),
            Expanded(
              child: FlatButton(
                onPressed: () {},
                color: Colors.blue[800],
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 15, 30, 15
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Museu Nacional',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.alt_route_outlined,
                        color: Colors.white,
                      ),],),),),),
            Divider(height: 0, thickness: 1, color: Colors.white.withOpacity(0.8), indent: 0, endIndent: 0,),
            Expanded(
              child: FlatButton(
                onPressed: () {},
                color: Colors.blue[800],
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 15, 30, 15
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Eixo Monumental',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.alt_route_outlined,
                        color: Colors.white,
                      ),],),),),),
            Divider(height: 0, thickness: 1, color: Colors.white.withOpacity(0.8), indent: 0, endIndent: 0,),
            Expanded(
              child: FlatButton(
                onPressed: () {},
                color: Colors.blue[800],
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 15, 30, 15
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Praça dos Três Poderes',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.alt_route_outlined,
                        color: Colors.white,
                      ),],),),),),*/

                ]
            );
          }
        }
