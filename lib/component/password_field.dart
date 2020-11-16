import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PasswordField extends StatefulWidget {
  final Function onSaved;
  final Function onChanged;

  PasswordField({Key key, @required this.onSaved, @required this.onChanged})
      : super(key: key);

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  String _password;
  bool _isPasswordDirty = false;

  String validatePassword(String value
      ) {
    if (value.isEmpty) {
      return( 'Digite sua senha');


    }

    if (value.length < 4)
      return ('Curto demais');
    else
      return null;
  }

  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: TextInputType.text,
        obscureText: true,
        validator: validatePassword,
        autovalidate: _isPasswordDirty,
        onChanged: (value) {
          setState(() {
            _isPasswordDirty = true;
          });

          widget.onChanged(value);
        },
        onSaved: (value) {
          setState(() {
            _password = value;
          });

          widget.onSaved(value);
        },
        style:
        new TextStyle(fontSize: 22.0, color: Colors.white),
        decoration: new InputDecoration(
          hintText: 'Senha',
          hintStyle:
          new TextStyle(fontSize: 22.0, color: Colors.white),
          contentPadding: const EdgeInsets.only(
              left: 14.0, bottom: 8.0, top: 8.0),
        ));
  }
}
