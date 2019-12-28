import 'dart:io';

import 'package:combomakerteste/src/menu_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailcontroller, _passwordcontroller;

  bool _isLoading;

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    _emailcontroller = new TextEditingController();
    _passwordcontroller = new TextEditingController();
    _isLoading = false;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isLoading) {
      return Scaffold(
            key: _scaffoldKey,
            backgroundColor: Colors.white,
            body: _buildBody(context, _buttonLogin(context, "LOGIN")));
    } else {
      return Scaffold(
            key: _scaffoldKey,
            backgroundColor: Colors.white,
            body: _buildBody(context, _buildProgress(context)));
    }
  }

  Widget _buildProgress(context) {
    return SizedBox(
      width: 35.0,
      height: 35.0,
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildBody(context, widget) {
    return Container(
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "images/Kong.png",
              fit: BoxFit.fill,
              height: 150.0,
            ),
            Text(
              "Calisthenics Combos",
              style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Mansalva",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(hintText: "Email"),
                controller: _emailcontroller,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(hintText: "Password :"),
                controller: _passwordcontroller,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, left: 200.0),
              child: InkWell(
                child: Text(
                  "FORGOT YOU PASSWORD ?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9.0),
                ),
                onTap: () {},
              ),
            ),
            Divider(color: Colors.transparent,),
            widget,
            Row(children: <Widget>[
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                    child: Divider(
                      color: Colors.black,
                      height: 36,
                    )),
              ),
              Text("Or Connect with"),
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                    child: Divider(
                      color: Colors.black,
                      height: 36,
                    )),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 150.0,
                    height: 30.0,
                    child: RaisedButton(
                      color: Color(0xFF395185),
                      splashColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.asset(
                            "icons/facebook.png",
                            width: 25.0,
                            height: 25.0,
                          ),
                          Text(
                            "FACEBOOK",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(
                  width: 150.0,
                  height: 30.0,
                  child: RaisedButton(
                    color: Colors.red,
                    splashColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset(
                          "icons/google.png",
                          width: 25.0,
                          height: 25.0,
                        ),
                        Text(
                          "GOOGLE",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Future<FirebaseUser> _loginWithFirebase(email, password) async {
    AuthResult result = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);

    return result.user;
  }

  void _showAlert(label) {
    _scaffoldKey.currentState.showSnackBar(
      SnackBar(
        duration: Duration(
          seconds: 2,
        ),
        backgroundColor: Colors.indigo,
        content: Text(
          label,
          style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              fontFamily: "GoogleSansMedium"),
        ),
      )
    );
  }

  Widget _buttonLogin(context, label) {
    return SizedBox(
      width: 330.0,
      height: 35.0,
      child: RaisedButton(
        color: Colors.lightBlueAccent,
        splashColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Text(
          label,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () async {
          try {
            _changeButtonState(true);

            if (_emailcontroller.text.isNotEmpty &&
                _passwordcontroller.text.isNotEmpty) {
              FirebaseUser firebaseUser = await _loginWithFirebase(
                  _emailcontroller.text, _passwordcontroller.text);

              if (firebaseUser.uid != null) {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => MenuStartPage()));
              }
            }

            _changeButtonState(false);
          } on PlatformException catch (error) {
            _showAlert(error.code);
            if (Platform.isAndroid) {
              if (error.code == "ERROR_INVALID_EMAIL") {
                _changeButtonState(false);
                _buttonLogin(context, "LOGIN");
                print("Email Incorreto");
              }

              if (error.code == "ERROR_WRONG_PASSWORD") {
                _changeButtonState(false);
                print("Senha Incorreto");
              }

              if (error.code == "ERROR_USER_NOT_FOUND") {
                _changeButtonState(false);
                print("Usuário Não Encontrado");
              }
            }
            _changeButtonState(false);
          }
        },
      ),
    );
  }

  void _changeButtonState(state) {
    setState(() {
      _isLoading = state;
    });
  }
}
