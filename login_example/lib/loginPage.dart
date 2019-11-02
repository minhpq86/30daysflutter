import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'user.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final user = User();

  @override
  Widget build(BuildContext context) {
    final _txtUser = TextField(
      keyboardType: TextInputType.text,
      autocorrect: false,
      decoration: InputDecoration(
        hintText: 'Input username',
        contentPadding: EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      onChanged: (text) {
        setState(() {
          this.user.userName = text;
        });
      },
    );

    final _txtEmail = TextField(
      keyboardType: TextInputType.emailAddress,
      autocorrect: false,
      decoration: InputDecoration(
        hintText: 'Input email',
        contentPadding: EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      onChanged: (text) {
        setState(() {
          this.user.email = text;
        });
      },
    );

    final _txtPassword = TextField(
      keyboardType: TextInputType.visiblePassword,
      autocorrect: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Input password',
        contentPadding: EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      onChanged: (text) {
        setState(() {
          this.user.password = text;
        });
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 240, 240, 240),
                border: Border.all(width: 1.2, color: Colors.black12),
                borderRadius:
                    const BorderRadius.all(const Radius.circular(6.0))),
            child: _txtUser,
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 240, 240, 240),
                border: Border.all(width: 1.2, color: Colors.black12),
                borderRadius:
                    const BorderRadius.all(const Radius.circular(6.0))),
            child: _txtEmail,
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 240, 240, 240),
                border: Border.all(width: 1.2, color: Colors.black12),
                borderRadius:
                    const BorderRadius.all(const Radius.circular(6.0))),
            child: _txtPassword,
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text('Login'),
                  onPressed: () {},
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
